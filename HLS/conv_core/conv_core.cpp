#include "conv_core.h"

//Feature: [H][W][C]
//kernel: [Ky][Kx][CHin][CHout]

void Conv(
		ap_uint<16> CHin, 			    //����ͼ����
		ap_uint<16> Hin,			    //����ͼ��ĸ߶�
		ap_uint<16> Win,			    //����ͼ��Ŀ��
		ap_uint<16> CHout,			    //���ͼ����
		ap_uint<8> Kx,				    //����˿��
		ap_uint<8> Ky,				    //����˸߶�
		ap_uint<8> Sx,				    //�������x����Ĳ���
		ap_uint<8> Sy,				    //�������y����Ĳ���
		ap_uint<1> mode,			    //�����ģʽ
		ap_uint<1> relu_en,			    //�������־
		Dtype_f feature_in[],		    //������������
		Dtype_w W[],				    //Ȩ��
		Dtype_w bias[],				    //ƫ��
		Dtype_f feature_out[]		    //�����������
	)//mode: 0:VALID, 1:SAME
{
	//#pragma HLS PIPELINE enable_flush
	#pragma HLS INTERFACE m_axi depth=4294967295 port=feature_out offset=slave //AXI���ߵĴӶ˿ڣ�������Ϊ4294967295
	#pragma HLS INTERFACE m_axi depth=4294967295 port=bias offset=slave
	#pragma HLS INTERFACE m_axi depth=4294967295 port=W offset=slave
	#pragma HLS INTERFACE m_axi depth=4294967295 port=feature_in offset=slave
	#pragma HLS INTERFACE s_axilite port=relu_en
	#pragma HLS INTERFACE s_axilite port=CHout
	#pragma HLS INTERFACE s_axilite port=Sx
	#pragma HLS INTERFACE s_axilite port=Hin
	#pragma HLS INTERFACE s_axilite port=CHin
	#pragma HLS INTERFACE s_axilite port=Kx
	#pragma HLS INTERFACE s_axilite port=mode
	#pragma HLS INTERFACE s_axilite port=Sy
	#pragma HLS INTERFACE s_axilite port=Ky
	#pragma HLS INTERFACE s_axilite port=Win
	#pragma HLS INTERFACE s_axilite port=return
	//��䷽ʽ
	ap_uint<8> pad_x,pad_y;		// padding���ݣ���ʾx��y��������������
	if(mode==0)		// valid�²�����padding
	{
		pad_x=0;pad_y=0;
	}
	else		// sameģʽ�½���padding
	{
		pad_x=(Kx-1)/2;pad_y=(Ky-1)/2;
	}
	// ͨ������Ĳ������ݣ��������ͼ��ĸ߶ȺͿ��
	ap_uint<16> Hout,Wout;
	Wout=(Win+2*pad_x-Kx)/Sx+1;
	Hout=(Hin+2*pad_y-Ky)/Sy+1;
	//�������
	for(int cout=0;cout<CHout;cout++)												
	{                                                                   
		for(int i=0;i<Hout;i++)                                         
		{                                                               
			for(int j=0;j<Wout;j++)                                     
			{                                                           
				Dtype_acc sum=0;                                        
				for(int ii=0;ii<Ky;ii++)                                
				{                                                       
					for(int jj=0;jj<Kx;jj++)                            
					{                                                   
						ap_int<16> h=i*Sy-pad_y+ii;                     
						ap_int<16> w=j*Sx-pad_x+jj;  
						if(h>=0 && w>=0 && h<Hin && w<Win)       //�ж��Ƿ���padding�ķ�Χ��       
						{                                               
							Input_Channel:                              
							for(int cin=0;cin<CHin;cin++)               
							{
								Dtype_mul tp=feature_in[h*CHin*Win+w*CHin+cin]*W[ii*Kx*CHin*CHout+jj*CHin*CHout+cin*CHout+cout];
								sum+=tp;
							}
						}
					}
				}
				sum+=bias[cout];
				if(relu_en && sum<0)	//���ʹ����relu�������С��0ʱ����Ϊ0
					sum=0;
				feature_out[i*Wout*CHout+j*CHout+cout]=sum;
			}
		}
	}

}
