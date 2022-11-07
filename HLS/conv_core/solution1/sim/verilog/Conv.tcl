
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set feature_in__W__bias__feature_out_group [add_wave_group feature_in__W__bias__feature_out(axi_master) -into $cinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $feature_in__W__bias__feature_out_group]
set wdata_group [add_wave_group "Write Channel" -into $feature_in__W__bias__feature_out_group]
set ctrl_group [add_wave_group "Handshakes" -into $feature_in__W__bias__feature_out_group]
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_BUSER -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_BID -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_BRESP -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_RRESP -into $rdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_RUSER -into $rdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_RID -into $rdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_RDATA -into $rdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARUSER -into $rdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARREGION -into $rdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARQOS -into $rdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARPROT -into $rdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARBURST -into $rdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARLEN -into $rdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARID -into $rdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARADDR -into $rdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_WUSER -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_WID -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_WSTRB -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_WDATA -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWUSER -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWREGION -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWQOS -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWPROT -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWBURST -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWLEN -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWID -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWADDR -into $wdata_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/m_axi_gmem_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group [add_wave_group CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_Conv_top/AESL_inst_Conv/interrupt -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_BRESP -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_BREADY -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_BVALID -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_RRESP -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_RDATA -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_RREADY -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_RVALID -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_ARREADY -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_ARVALID -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_ARADDR -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_WSTRB -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_WDATA -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_WREADY -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_WVALID -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_AWREADY -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_AWVALID -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AESL_inst_Conv/s_axi_AXILiteS_AWADDR -into $CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_Conv_top/AESL_inst_Conv/ap_done -into $blocksiggroup
add_wave /apatb_Conv_top/AESL_inst_Conv/ap_idle -into $blocksiggroup
add_wave /apatb_Conv_top/AESL_inst_Conv/ap_ready -into $blocksiggroup
add_wave /apatb_Conv_top/AESL_inst_Conv/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_Conv_top/AESL_inst_Conv/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_Conv_top/AESL_inst_Conv/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_Conv_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_Conv_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_Conv_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_Conv_top/LENGTH_gmem -into $tb_portdepth_group -radix hex
add_wave /apatb_Conv_top/LENGTH_CHin_V -into $tb_portdepth_group -radix hex
add_wave /apatb_Conv_top/LENGTH_Hin_V -into $tb_portdepth_group -radix hex
add_wave /apatb_Conv_top/LENGTH_Win_V -into $tb_portdepth_group -radix hex
add_wave /apatb_Conv_top/LENGTH_CHout_V -into $tb_portdepth_group -radix hex
add_wave /apatb_Conv_top/LENGTH_Kx_V -into $tb_portdepth_group -radix hex
add_wave /apatb_Conv_top/LENGTH_Ky_V -into $tb_portdepth_group -radix hex
add_wave /apatb_Conv_top/LENGTH_Sx_V -into $tb_portdepth_group -radix hex
add_wave /apatb_Conv_top/LENGTH_Sy_V -into $tb_portdepth_group -radix hex
add_wave /apatb_Conv_top/LENGTH_mode_V -into $tb_portdepth_group -radix hex
add_wave /apatb_Conv_top/LENGTH_relu_en_V -into $tb_portdepth_group -radix hex
add_wave /apatb_Conv_top/LENGTH_feature_in -into $tb_portdepth_group -radix hex
add_wave /apatb_Conv_top/LENGTH_W -into $tb_portdepth_group -radix hex
add_wave /apatb_Conv_top/LENGTH_bias -into $tb_portdepth_group -radix hex
add_wave /apatb_Conv_top/LENGTH_feature_out -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_feature_in__W__bias__feature_out_group [add_wave_group feature_in__W__bias__feature_out(axi_master) -into $tbcinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_feature_in__W__bias__feature_out_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_feature_in__W__bias__feature_out_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_feature_in__W__bias__feature_out_group]
add_wave /apatb_Conv_top/gmem_BUSER -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_BID -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_BRESP -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/gmem_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/gmem_RRESP -into $rdata_group -radix hex
add_wave /apatb_Conv_top/gmem_RUSER -into $rdata_group -radix hex
add_wave /apatb_Conv_top/gmem_RID -into $rdata_group -radix hex
add_wave /apatb_Conv_top/gmem_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/gmem_RDATA -into $rdata_group -radix hex
add_wave /apatb_Conv_top/gmem_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/gmem_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/gmem_ARUSER -into $rdata_group -radix hex
add_wave /apatb_Conv_top/gmem_ARREGION -into $rdata_group -radix hex
add_wave /apatb_Conv_top/gmem_ARQOS -into $rdata_group -radix hex
add_wave /apatb_Conv_top/gmem_ARPROT -into $rdata_group -radix hex
add_wave /apatb_Conv_top/gmem_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_Conv_top/gmem_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_Conv_top/gmem_ARBURST -into $rdata_group -radix hex
add_wave /apatb_Conv_top/gmem_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_Conv_top/gmem_ARLEN -into $rdata_group -radix hex
add_wave /apatb_Conv_top/gmem_ARID -into $rdata_group -radix hex
add_wave /apatb_Conv_top/gmem_ARADDR -into $rdata_group -radix hex
add_wave /apatb_Conv_top/gmem_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/gmem_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/gmem_WUSER -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_WID -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/gmem_WSTRB -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_WDATA -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/gmem_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/gmem_AWUSER -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_AWREGION -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_AWQOS -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_AWPROT -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_AWBURST -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_AWLEN -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_AWID -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_AWADDR -into $wdata_group -radix hex
add_wave /apatb_Conv_top/gmem_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/gmem_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group [add_wave_group CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_Conv_top/AXILiteS_INTERRUPT -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AXILiteS_BRESP -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex
add_wave /apatb_Conv_top/AXILiteS_BREADY -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AXILiteS_BVALID -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AXILiteS_RRESP -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex
add_wave /apatb_Conv_top/AXILiteS_RDATA -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex
add_wave /apatb_Conv_top/AXILiteS_RREADY -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AXILiteS_RVALID -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AXILiteS_ARREADY -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AXILiteS_ARVALID -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AXILiteS_ARADDR -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex
add_wave /apatb_Conv_top/AXILiteS_WSTRB -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex
add_wave /apatb_Conv_top/AXILiteS_WDATA -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex
add_wave /apatb_Conv_top/AXILiteS_WREADY -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AXILiteS_WVALID -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AXILiteS_AWREADY -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AXILiteS_AWVALID -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -color #ffff00 -radix hex
add_wave /apatb_Conv_top/AXILiteS_AWADDR -into $tb_CHin__Hin__Win__CHout__Kx__Ky__Sx__Sy__mode__relu_en__feature_in__W__bias__feature_out__return_group -radix hex
save_wave_config Conv.wcfg
run all
quit

