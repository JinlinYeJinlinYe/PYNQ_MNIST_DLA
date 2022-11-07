#include "conv_core.h"

//Feature: [H][W][C]
//kernel: [Ky][Kx][CHin][CHout]

void Conv(
		ap_uint<16> CHin, 			    //输入图层数
		ap_uint<16> Hin,			    //输入图层的高度
		ap_uint<16> Win,			    //输入图层的宽度
		ap_uint<16> CHout,			    //输出图层数
		ap_uint<8> Kx,				    //卷积核宽度
		ap_uint<8> Ky,				    //卷积核高度
		ap_uint<8> Sx,				    //卷积核在x方向的步长
		ap_uint<8> Sy,				    //卷积核在y方向的步长
		ap_uint<1> mode,			    //卷积的模式
		ap_uint<1> relu_en,			    //激活函数标志
		Dtype_f feature_in[],		    //输入特征数据
		Dtype_w W[],				    //权重
		Dtype_w bias[],				    //偏置
		Dtype_f feature_out[]		    //输出特征数据
	)//mode: 0:VALID, 1:SAME
{
	//#pragma HLS PIPELINE enable_flush
	#pragma HLS INTERFACE m_axi depth=4294967295 port=feature_out offset=slave //AXI总线的从端口，最大深度为4294967295
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
	//填充方式
	ap_uint<8> pad_x,pad_y;		// padding数据，表示x和y方向待填补的行列数
	if(mode==0)		// valid下不进行padding
	{
		pad_x=0;pad_y=0;
	}
	else		// same模式下进行padding
	{
		pad_x=(Kx-1)/2;pad_y=(Ky-1)/2;
	}
	// 通过输入的参数数据，计算输出图层的高度和宽度
	ap_uint<16> Hout,Wout;
	Wout=(Win+2*pad_x-Kx)/Sx+1;
	Hout=(Hin+2*pad_y-Ky)/Sy+1;
	//卷积计算
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
						if(h>=0 && w>=0 && h<Hin && w<Win)       //判断是否在padding的范围内       
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
				if(relu_en && sum<0)	//如果使用了relu激活函数，小于0时就设为0
					sum=0;
				feature_out[i*Wout*CHout+j*CHout+cout]=sum;
			}
		}
	}

}
