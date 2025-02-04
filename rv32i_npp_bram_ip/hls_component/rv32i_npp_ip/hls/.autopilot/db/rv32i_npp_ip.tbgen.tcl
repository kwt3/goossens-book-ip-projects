set moduleName rv32i_npp_ip
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {rv32i_npp_ip}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict code_ram { MEM_WIDTH 32 MEM_SIZE 131072 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict data_ram { MEM_WIDTH 32 MEM_SIZE 131072 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ start_pc int 32 regular {axi_slave 0}  }
	{ code_ram int 32 regular {bram 32768 { 1 3 } 1 1 }  }
	{ data_ram int 32 regular {bram 32768 { 2 3 } 1 1 }  }
	{ nb_instruction int 32 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "start_pc", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "code_ram", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_ram", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "nb_instruction", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":24}, "offset_end" : {"out":31}} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ code_ram_Addr_A sc_out sc_lv 32 signal 1 } 
	{ code_ram_EN_A sc_out sc_logic 1 signal 1 } 
	{ code_ram_WEN_A sc_out sc_lv 4 signal 1 } 
	{ code_ram_Din_A sc_out sc_lv 32 signal 1 } 
	{ code_ram_Dout_A sc_in sc_lv 32 signal 1 } 
	{ code_ram_Clk_A sc_out sc_logic 1 signal 1 } 
	{ code_ram_Rst_A sc_out sc_logic 1 signal 1 } 
	{ data_ram_Addr_A sc_out sc_lv 32 signal 2 } 
	{ data_ram_EN_A sc_out sc_logic 1 signal 2 } 
	{ data_ram_WEN_A sc_out sc_lv 4 signal 2 } 
	{ data_ram_Din_A sc_out sc_lv 32 signal 2 } 
	{ data_ram_Dout_A sc_in sc_lv 32 signal 2 } 
	{ data_ram_Clk_A sc_out sc_logic 1 signal 2 } 
	{ data_ram_Rst_A sc_out sc_logic 1 signal 2 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"rv32i_npp_ip","role":"start","value":"0","valid_bit":"0"},{"name":"rv32i_npp_ip","role":"continue","value":"0","valid_bit":"4"},{"name":"rv32i_npp_ip","role":"auto_start","value":"0","valid_bit":"7"},{"name":"start_pc","role":"data","value":"16"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"rv32i_npp_ip","role":"start","value":"0","valid_bit":"0"},{"name":"rv32i_npp_ip","role":"done","value":"0","valid_bit":"1"},{"name":"rv32i_npp_ip","role":"idle","value":"0","valid_bit":"2"},{"name":"rv32i_npp_ip","role":"ready","value":"0","valid_bit":"3"},{"name":"rv32i_npp_ip","role":"auto_start","value":"0","valid_bit":"7"},{"name":"nb_instruction","role":"data","value":"24"}, {"name":"nb_instruction","role":"valid","value":"28","valid_bit":"0"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "code_ram_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "code_ram", "role": "Addr_A" }} , 
 	{ "name": "code_ram_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "code_ram", "role": "EN_A" }} , 
 	{ "name": "code_ram_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "code_ram", "role": "WEN_A" }} , 
 	{ "name": "code_ram_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "code_ram", "role": "Din_A" }} , 
 	{ "name": "code_ram_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "code_ram", "role": "Dout_A" }} , 
 	{ "name": "code_ram_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "code_ram", "role": "Clk_A" }} , 
 	{ "name": "code_ram_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "code_ram", "role": "Rst_A" }} , 
 	{ "name": "data_ram_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_ram", "role": "Addr_A" }} , 
 	{ "name": "data_ram_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_ram", "role": "EN_A" }} , 
 	{ "name": "data_ram_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_ram", "role": "WEN_A" }} , 
 	{ "name": "data_ram_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_ram", "role": "Din_A" }} , 
 	{ "name": "data_ram_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_ram", "role": "Dout_A" }} , 
 	{ "name": "data_ram_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_ram", "role": "Clk_A" }} , 
 	{ "name": "data_ram_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_ram", "role": "Rst_A" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "rv32i_npp_ip",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "start_pc", "Type" : "None", "Direction" : "I"},
			{"Name" : "code_ram", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "data_ram", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "nb_instruction", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_45_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state7", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state7_blk", "QuitState" : "ap_ST_fsm_state7", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state7_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_65_5_32_1_1_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_65_5_32_1_1_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_6_1_1_1_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_8_1_1_U4", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rv32i_npp_ip {
		start_pc {Type I LastRead 0 FirstWrite -1}
		code_ram {Type I LastRead 0 FirstWrite -1}
		data_ram {Type IO LastRead 3 FirstWrite 3}
		nb_instruction {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	code_ram { bram {  { code_ram_Addr_A MemPortADDR2 1 32 }  { code_ram_EN_A MemPortCE2 1 1 }  { code_ram_WEN_A MemPortWE2 1 4 }  { code_ram_Din_A MemPortDIN2 1 32 }  { code_ram_Dout_A MemPortDOUT2 0 32 }  { code_ram_Clk_A mem_clk 1 1 }  { code_ram_Rst_A mem_rst 1 1 } } }
	data_ram { bram {  { data_ram_Addr_A MemPortADDR2 1 32 }  { data_ram_EN_A MemPortCE2 1 1 }  { data_ram_WEN_A MemPortWE2 1 4 }  { data_ram_Din_A MemPortDIN2 1 32 }  { data_ram_Dout_A MemPortDOUT2 0 32 }  { data_ram_Clk_A mem_clk 1 1 }  { data_ram_Rst_A mem_rst 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
