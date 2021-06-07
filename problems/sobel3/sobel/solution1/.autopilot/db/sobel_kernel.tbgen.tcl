set moduleName sobel_kernel
set isTopModule 0
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sobel_kernel}
set C_modelType { int 9 }
set C_modelArgList {
	{ window_0_0_read int 16 regular  }
	{ window_0_1_read int 15 regular  }
	{ window_0_2_read int 16 regular  }
	{ window_1_0_read int 15 regular  }
	{ window_1_2_read int 15 regular  }
	{ window_2_0_read int 16 regular  }
	{ window_2_1_read int 15 regular  }
	{ window_2_2_read int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "window_0_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_0_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_2_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 9} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ window_0_0_read sc_in sc_lv 16 signal 0 } 
	{ window_0_1_read sc_in sc_lv 15 signal 1 } 
	{ window_0_2_read sc_in sc_lv 16 signal 2 } 
	{ window_1_0_read sc_in sc_lv 15 signal 3 } 
	{ window_1_2_read sc_in sc_lv 15 signal 4 } 
	{ window_2_0_read sc_in sc_lv 16 signal 5 } 
	{ window_2_1_read sc_in sc_lv 15 signal 6 } 
	{ window_2_2_read sc_in sc_lv 16 signal 7 } 
	{ ap_return sc_out sc_lv 9 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "window_0_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_0_read", "role": "default" }} , 
 	{ "name": "window_0_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_0_1_read", "role": "default" }} , 
 	{ "name": "window_0_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_2_read", "role": "default" }} , 
 	{ "name": "window_1_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_0_read", "role": "default" }} , 
 	{ "name": "window_1_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_2_read", "role": "default" }} , 
 	{ "name": "window_2_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_0_read", "role": "default" }} , 
 	{ "name": "window_2_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_2_1_read", "role": "default" }} , 
 	{ "name": "window_2_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_2_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sobel_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sobel_kernel {
		window_0_0_read {Type I LastRead 0 FirstWrite -1}
		window_0_1_read {Type I LastRead 0 FirstWrite -1}
		window_0_2_read {Type I LastRead 0 FirstWrite -1}
		window_1_0_read {Type I LastRead 0 FirstWrite -1}
		window_1_2_read {Type I LastRead 0 FirstWrite -1}
		window_2_0_read {Type I LastRead 0 FirstWrite -1}
		window_2_1_read {Type I LastRead 0 FirstWrite -1}
		window_2_2_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	window_0_0_read { ap_none {  { window_0_0_read in_data 0 16 } } }
	window_0_1_read { ap_none {  { window_0_1_read in_data 0 15 } } }
	window_0_2_read { ap_none {  { window_0_2_read in_data 0 16 } } }
	window_1_0_read { ap_none {  { window_1_0_read in_data 0 15 } } }
	window_1_2_read { ap_none {  { window_1_2_read in_data 0 15 } } }
	window_2_0_read { ap_none {  { window_2_0_read in_data 0 16 } } }
	window_2_1_read { ap_none {  { window_2_1_read in_data 0 15 } } }
	window_2_2_read { ap_none {  { window_2_2_read in_data 0 16 } } }
}
set moduleName sobel_kernel
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sobel_kernel}
set C_modelType { int 16 }
set C_modelArgList {
	{ window int 16 regular {array 3 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "window", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "window","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 16,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "return","cData": "PIXEL","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ window_address0 sc_out sc_lv 2 signal 0 } 
	{ window_ce0 sc_out sc_logic 1 signal 0 } 
	{ window_q0 sc_in sc_lv 16 signal 0 } 
	{ window_address1 sc_out sc_lv 2 signal 0 } 
	{ window_ce1 sc_out sc_logic 1 signal 0 } 
	{ window_q1 sc_in sc_lv 16 signal 0 } 
	{ ap_return sc_out sc_lv 16 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "window_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "window", "role": "address0" }} , 
 	{ "name": "window_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "window", "role": "ce0" }} , 
 	{ "name": "window_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window", "role": "q0" }} , 
 	{ "name": "window_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "window", "role": "address1" }} , 
 	{ "name": "window_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "window", "role": "ce1" }} , 
 	{ "name": "window_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sobel_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "4",
		"VariableLatency" : "0", "ExactLatency" : "4", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sobel_kernel {
		window {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	window { ap_memory {  { window_address0 mem_address 1 2 }  { window_ce0 mem_ce 1 1 }  { window_q0 mem_dout 0 16 }  { window_address1 MemPortADDR2 1 2 }  { window_ce1 MemPortCE2 1 1 }  { window_q1 MemPortDOUT2 0 16 } } }
}

set busDeadlockParameterList { 
}

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
set moduleName sobel_kernel
set isTopModule 0
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sobel_kernel}
set C_modelType { int 9 }
set C_modelArgList {
	{ window_0_0_read int 16 regular  }
	{ window_0_1_read int 15 regular  }
	{ window_0_2_read int 16 regular  }
	{ window_1_0_read int 15 regular  }
	{ window_1_2_read int 15 regular  }
	{ window_2_0_read int 16 regular  }
	{ window_2_1_read int 15 regular  }
	{ window_2_2_read int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "window_0_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_0_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_2_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 9} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ window_0_0_read sc_in sc_lv 16 signal 0 } 
	{ window_0_1_read sc_in sc_lv 15 signal 1 } 
	{ window_0_2_read sc_in sc_lv 16 signal 2 } 
	{ window_1_0_read sc_in sc_lv 15 signal 3 } 
	{ window_1_2_read sc_in sc_lv 15 signal 4 } 
	{ window_2_0_read sc_in sc_lv 16 signal 5 } 
	{ window_2_1_read sc_in sc_lv 15 signal 6 } 
	{ window_2_2_read sc_in sc_lv 16 signal 7 } 
	{ ap_return sc_out sc_lv 9 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "window_0_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_0_read", "role": "default" }} , 
 	{ "name": "window_0_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_0_1_read", "role": "default" }} , 
 	{ "name": "window_0_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_2_read", "role": "default" }} , 
 	{ "name": "window_1_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_0_read", "role": "default" }} , 
 	{ "name": "window_1_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_2_read", "role": "default" }} , 
 	{ "name": "window_2_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_0_read", "role": "default" }} , 
 	{ "name": "window_2_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_2_1_read", "role": "default" }} , 
 	{ "name": "window_2_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_2_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sobel_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sobel_kernel {
		window_0_0_read {Type I LastRead 0 FirstWrite -1}
		window_0_1_read {Type I LastRead 0 FirstWrite -1}
		window_0_2_read {Type I LastRead 0 FirstWrite -1}
		window_1_0_read {Type I LastRead 0 FirstWrite -1}
		window_1_2_read {Type I LastRead 0 FirstWrite -1}
		window_2_0_read {Type I LastRead 0 FirstWrite -1}
		window_2_1_read {Type I LastRead 0 FirstWrite -1}
		window_2_2_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	window_0_0_read { ap_none {  { window_0_0_read in_data 0 16 } } }
	window_0_1_read { ap_none {  { window_0_1_read in_data 0 15 } } }
	window_0_2_read { ap_none {  { window_0_2_read in_data 0 16 } } }
	window_1_0_read { ap_none {  { window_1_0_read in_data 0 15 } } }
	window_1_2_read { ap_none {  { window_1_2_read in_data 0 15 } } }
	window_2_0_read { ap_none {  { window_2_0_read in_data 0 16 } } }
	window_2_1_read { ap_none {  { window_2_1_read in_data 0 15 } } }
	window_2_2_read { ap_none {  { window_2_2_read in_data 0 16 } } }
}
set moduleName sobel_kernel
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sobel_kernel}
set C_modelType { int 16 }
set C_modelArgList {
	{ window int 16 regular {array 3 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "window", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "window","cData": "short","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 16,"bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "return","cData": "PIXEL","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ window_address0 sc_out sc_lv 2 signal 0 } 
	{ window_ce0 sc_out sc_logic 1 signal 0 } 
	{ window_q0 sc_in sc_lv 16 signal 0 } 
	{ window_address1 sc_out sc_lv 2 signal 0 } 
	{ window_ce1 sc_out sc_logic 1 signal 0 } 
	{ window_q1 sc_in sc_lv 16 signal 0 } 
	{ ap_return sc_out sc_lv 16 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "window_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "window", "role": "address0" }} , 
 	{ "name": "window_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "window", "role": "ce0" }} , 
 	{ "name": "window_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window", "role": "q0" }} , 
 	{ "name": "window_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "window", "role": "address1" }} , 
 	{ "name": "window_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "window", "role": "ce1" }} , 
 	{ "name": "window_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sobel_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "4",
		"VariableLatency" : "0", "ExactLatency" : "4", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sobel_kernel {
		window {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	window { ap_memory {  { window_address0 mem_address 1 2 }  { window_ce0 mem_ce 1 1 }  { window_q0 mem_dout 0 16 }  { window_address1 MemPortADDR2 1 2 }  { window_ce1 MemPortCE2 1 1 }  { window_q1 MemPortDOUT2 0 16 } } }
}

set busDeadlockParameterList { 
}

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
set moduleName sobel_kernel
set isTopModule 0
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sobel_kernel}
set C_modelType { int 9 }
set C_modelArgList {
	{ window_0_0_read int 16 regular  }
	{ window_0_1_read int 15 regular  }
	{ window_0_2_read int 16 regular  }
	{ window_1_0_read int 15 regular  }
	{ window_1_2_read int 15 regular  }
	{ window_2_0_read int 16 regular  }
	{ window_2_1_read int 15 regular  }
	{ window_2_2_read int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "window_0_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_0_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_2_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 9} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ window_0_0_read sc_in sc_lv 16 signal 0 } 
	{ window_0_1_read sc_in sc_lv 15 signal 1 } 
	{ window_0_2_read sc_in sc_lv 16 signal 2 } 
	{ window_1_0_read sc_in sc_lv 15 signal 3 } 
	{ window_1_2_read sc_in sc_lv 15 signal 4 } 
	{ window_2_0_read sc_in sc_lv 16 signal 5 } 
	{ window_2_1_read sc_in sc_lv 15 signal 6 } 
	{ window_2_2_read sc_in sc_lv 16 signal 7 } 
	{ ap_return sc_out sc_lv 9 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "window_0_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_0_read", "role": "default" }} , 
 	{ "name": "window_0_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_0_1_read", "role": "default" }} , 
 	{ "name": "window_0_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_2_read", "role": "default" }} , 
 	{ "name": "window_1_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_0_read", "role": "default" }} , 
 	{ "name": "window_1_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_2_read", "role": "default" }} , 
 	{ "name": "window_2_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_0_read", "role": "default" }} , 
 	{ "name": "window_2_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_2_1_read", "role": "default" }} , 
 	{ "name": "window_2_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_2_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sobel_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sobel_kernel {
		window_0_0_read {Type I LastRead 0 FirstWrite -1}
		window_0_1_read {Type I LastRead 0 FirstWrite -1}
		window_0_2_read {Type I LastRead 0 FirstWrite -1}
		window_1_0_read {Type I LastRead 0 FirstWrite -1}
		window_1_2_read {Type I LastRead 0 FirstWrite -1}
		window_2_0_read {Type I LastRead 0 FirstWrite -1}
		window_2_1_read {Type I LastRead 0 FirstWrite -1}
		window_2_2_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	window_0_0_read { ap_none {  { window_0_0_read in_data 0 16 } } }
	window_0_1_read { ap_none {  { window_0_1_read in_data 0 15 } } }
	window_0_2_read { ap_none {  { window_0_2_read in_data 0 16 } } }
	window_1_0_read { ap_none {  { window_1_0_read in_data 0 15 } } }
	window_1_2_read { ap_none {  { window_1_2_read in_data 0 15 } } }
	window_2_0_read { ap_none {  { window_2_0_read in_data 0 16 } } }
	window_2_1_read { ap_none {  { window_2_1_read in_data 0 15 } } }
	window_2_2_read { ap_none {  { window_2_2_read in_data 0 16 } } }
}
set moduleName sobel_kernel
set isTopModule 0
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sobel_kernel}
set C_modelType { int 9 }
set C_modelArgList {
	{ window_0_0_read int 16 regular  }
	{ window_0_1_read int 15 regular  }
	{ window_0_2_read int 16 regular  }
	{ window_1_0_read int 15 regular  }
	{ window_1_2_read int 15 regular  }
	{ window_2_0_read int 16 regular  }
	{ window_2_1_read int 15 regular  }
	{ window_2_2_read int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "window_0_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_0_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_2_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 9} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ window_0_0_read sc_in sc_lv 16 signal 0 } 
	{ window_0_1_read sc_in sc_lv 15 signal 1 } 
	{ window_0_2_read sc_in sc_lv 16 signal 2 } 
	{ window_1_0_read sc_in sc_lv 15 signal 3 } 
	{ window_1_2_read sc_in sc_lv 15 signal 4 } 
	{ window_2_0_read sc_in sc_lv 16 signal 5 } 
	{ window_2_1_read sc_in sc_lv 15 signal 6 } 
	{ window_2_2_read sc_in sc_lv 16 signal 7 } 
	{ ap_return sc_out sc_lv 9 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "window_0_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_0_read", "role": "default" }} , 
 	{ "name": "window_0_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_0_1_read", "role": "default" }} , 
 	{ "name": "window_0_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_2_read", "role": "default" }} , 
 	{ "name": "window_1_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_0_read", "role": "default" }} , 
 	{ "name": "window_1_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_2_read", "role": "default" }} , 
 	{ "name": "window_2_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_0_read", "role": "default" }} , 
 	{ "name": "window_2_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_2_1_read", "role": "default" }} , 
 	{ "name": "window_2_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_2_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sobel_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sobel_kernel {
		window_0_0_read {Type I LastRead 0 FirstWrite -1}
		window_0_1_read {Type I LastRead 0 FirstWrite -1}
		window_0_2_read {Type I LastRead 0 FirstWrite -1}
		window_1_0_read {Type I LastRead 0 FirstWrite -1}
		window_1_2_read {Type I LastRead 0 FirstWrite -1}
		window_2_0_read {Type I LastRead 0 FirstWrite -1}
		window_2_1_read {Type I LastRead 0 FirstWrite -1}
		window_2_2_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	window_0_0_read { ap_none {  { window_0_0_read in_data 0 16 } } }
	window_0_1_read { ap_none {  { window_0_1_read in_data 0 15 } } }
	window_0_2_read { ap_none {  { window_0_2_read in_data 0 16 } } }
	window_1_0_read { ap_none {  { window_1_0_read in_data 0 15 } } }
	window_1_2_read { ap_none {  { window_1_2_read in_data 0 15 } } }
	window_2_0_read { ap_none {  { window_2_0_read in_data 0 16 } } }
	window_2_1_read { ap_none {  { window_2_1_read in_data 0 15 } } }
	window_2_2_read { ap_none {  { window_2_2_read in_data 0 16 } } }
}
set moduleName sobel_kernel
set isTopModule 0
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sobel_kernel}
set C_modelType { int 9 }
set C_modelArgList {
	{ window_0_0_read int 16 regular  }
	{ window_0_1_read int 15 regular  }
	{ window_0_2_read int 16 regular  }
	{ window_1_0_read int 15 regular  }
	{ window_1_2_read int 15 regular  }
	{ window_2_0_read int 16 regular  }
	{ window_2_1_read int 15 regular  }
	{ window_2_2_read int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "window_0_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_0_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_2_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 9} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ window_0_0_read sc_in sc_lv 16 signal 0 } 
	{ window_0_1_read sc_in sc_lv 15 signal 1 } 
	{ window_0_2_read sc_in sc_lv 16 signal 2 } 
	{ window_1_0_read sc_in sc_lv 15 signal 3 } 
	{ window_1_2_read sc_in sc_lv 15 signal 4 } 
	{ window_2_0_read sc_in sc_lv 16 signal 5 } 
	{ window_2_1_read sc_in sc_lv 15 signal 6 } 
	{ window_2_2_read sc_in sc_lv 16 signal 7 } 
	{ ap_return sc_out sc_lv 9 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "window_0_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_0_read", "role": "default" }} , 
 	{ "name": "window_0_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_0_1_read", "role": "default" }} , 
 	{ "name": "window_0_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_2_read", "role": "default" }} , 
 	{ "name": "window_1_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_0_read", "role": "default" }} , 
 	{ "name": "window_1_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_2_read", "role": "default" }} , 
 	{ "name": "window_2_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_0_read", "role": "default" }} , 
 	{ "name": "window_2_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_2_1_read", "role": "default" }} , 
 	{ "name": "window_2_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_2_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sobel_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sobel_kernel {
		window_0_0_read {Type I LastRead 0 FirstWrite -1}
		window_0_1_read {Type I LastRead 0 FirstWrite -1}
		window_0_2_read {Type I LastRead 0 FirstWrite -1}
		window_1_0_read {Type I LastRead 0 FirstWrite -1}
		window_1_2_read {Type I LastRead 0 FirstWrite -1}
		window_2_0_read {Type I LastRead 0 FirstWrite -1}
		window_2_1_read {Type I LastRead 0 FirstWrite -1}
		window_2_2_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	window_0_0_read { ap_none {  { window_0_0_read in_data 0 16 } } }
	window_0_1_read { ap_none {  { window_0_1_read in_data 0 15 } } }
	window_0_2_read { ap_none {  { window_0_2_read in_data 0 16 } } }
	window_1_0_read { ap_none {  { window_1_0_read in_data 0 15 } } }
	window_1_2_read { ap_none {  { window_1_2_read in_data 0 15 } } }
	window_2_0_read { ap_none {  { window_2_0_read in_data 0 16 } } }
	window_2_1_read { ap_none {  { window_2_1_read in_data 0 15 } } }
	window_2_2_read { ap_none {  { window_2_2_read in_data 0 16 } } }
}
set moduleName sobel_kernel
set isTopModule 0
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sobel_kernel}
set C_modelType { int 9 }
set C_modelArgList {
	{ window_0_0_read int 16 regular  }
	{ window_0_1_read int 15 regular  }
	{ window_0_2_read int 16 regular  }
	{ window_1_0_read int 15 regular  }
	{ window_1_2_read int 15 regular  }
	{ window_2_0_read int 16 regular  }
	{ window_2_1_read int 15 regular  }
	{ window_2_2_read int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "window_0_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_0_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_2_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 9} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ window_0_0_read sc_in sc_lv 16 signal 0 } 
	{ window_0_1_read sc_in sc_lv 15 signal 1 } 
	{ window_0_2_read sc_in sc_lv 16 signal 2 } 
	{ window_1_0_read sc_in sc_lv 15 signal 3 } 
	{ window_1_2_read sc_in sc_lv 15 signal 4 } 
	{ window_2_0_read sc_in sc_lv 16 signal 5 } 
	{ window_2_1_read sc_in sc_lv 15 signal 6 } 
	{ window_2_2_read sc_in sc_lv 16 signal 7 } 
	{ ap_return sc_out sc_lv 9 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "window_0_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_0_read", "role": "default" }} , 
 	{ "name": "window_0_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_0_1_read", "role": "default" }} , 
 	{ "name": "window_0_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_2_read", "role": "default" }} , 
 	{ "name": "window_1_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_0_read", "role": "default" }} , 
 	{ "name": "window_1_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_2_read", "role": "default" }} , 
 	{ "name": "window_2_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_0_read", "role": "default" }} , 
 	{ "name": "window_2_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_2_1_read", "role": "default" }} , 
 	{ "name": "window_2_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_2_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sobel_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sobel_kernel {
		window_0_0_read {Type I LastRead 0 FirstWrite -1}
		window_0_1_read {Type I LastRead 0 FirstWrite -1}
		window_0_2_read {Type I LastRead 0 FirstWrite -1}
		window_1_0_read {Type I LastRead 0 FirstWrite -1}
		window_1_2_read {Type I LastRead 0 FirstWrite -1}
		window_2_0_read {Type I LastRead 0 FirstWrite -1}
		window_2_1_read {Type I LastRead 0 FirstWrite -1}
		window_2_2_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	window_0_0_read { ap_none {  { window_0_0_read in_data 0 16 } } }
	window_0_1_read { ap_none {  { window_0_1_read in_data 0 15 } } }
	window_0_2_read { ap_none {  { window_0_2_read in_data 0 16 } } }
	window_1_0_read { ap_none {  { window_1_0_read in_data 0 15 } } }
	window_1_2_read { ap_none {  { window_1_2_read in_data 0 15 } } }
	window_2_0_read { ap_none {  { window_2_0_read in_data 0 16 } } }
	window_2_1_read { ap_none {  { window_2_1_read in_data 0 15 } } }
	window_2_2_read { ap_none {  { window_2_2_read in_data 0 16 } } }
}
set moduleName sobel_kernel
set isTopModule 0
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sobel_kernel}
set C_modelType { int 9 }
set C_modelArgList {
	{ window_0_0_read int 16 regular  }
	{ window_0_1_read int 15 regular  }
	{ window_0_2_read int 16 regular  }
	{ window_1_0_read int 15 regular  }
	{ window_1_2_read int 15 regular  }
	{ window_2_0_read int 16 regular  }
	{ window_2_1_read int 15 regular  }
	{ window_2_2_read int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "window_0_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_0_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_2_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 9} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ window_0_0_read sc_in sc_lv 16 signal 0 } 
	{ window_0_1_read sc_in sc_lv 15 signal 1 } 
	{ window_0_2_read sc_in sc_lv 16 signal 2 } 
	{ window_1_0_read sc_in sc_lv 15 signal 3 } 
	{ window_1_2_read sc_in sc_lv 15 signal 4 } 
	{ window_2_0_read sc_in sc_lv 16 signal 5 } 
	{ window_2_1_read sc_in sc_lv 15 signal 6 } 
	{ window_2_2_read sc_in sc_lv 16 signal 7 } 
	{ ap_return sc_out sc_lv 9 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "window_0_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_0_read", "role": "default" }} , 
 	{ "name": "window_0_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_0_1_read", "role": "default" }} , 
 	{ "name": "window_0_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_2_read", "role": "default" }} , 
 	{ "name": "window_1_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_0_read", "role": "default" }} , 
 	{ "name": "window_1_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_2_read", "role": "default" }} , 
 	{ "name": "window_2_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_0_read", "role": "default" }} , 
 	{ "name": "window_2_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_2_1_read", "role": "default" }} , 
 	{ "name": "window_2_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_2_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sobel_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sobel_kernel {
		window_0_0_read {Type I LastRead 0 FirstWrite -1}
		window_0_1_read {Type I LastRead 0 FirstWrite -1}
		window_0_2_read {Type I LastRead 0 FirstWrite -1}
		window_1_0_read {Type I LastRead 0 FirstWrite -1}
		window_1_2_read {Type I LastRead 0 FirstWrite -1}
		window_2_0_read {Type I LastRead 0 FirstWrite -1}
		window_2_1_read {Type I LastRead 0 FirstWrite -1}
		window_2_2_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	window_0_0_read { ap_none {  { window_0_0_read in_data 0 16 } } }
	window_0_1_read { ap_none {  { window_0_1_read in_data 0 15 } } }
	window_0_2_read { ap_none {  { window_0_2_read in_data 0 16 } } }
	window_1_0_read { ap_none {  { window_1_0_read in_data 0 15 } } }
	window_1_2_read { ap_none {  { window_1_2_read in_data 0 15 } } }
	window_2_0_read { ap_none {  { window_2_0_read in_data 0 16 } } }
	window_2_1_read { ap_none {  { window_2_1_read in_data 0 15 } } }
	window_2_2_read { ap_none {  { window_2_2_read in_data 0 16 } } }
}
set moduleName sobel_kernel
set isTopModule 0
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sobel_kernel}
set C_modelType { int 9 }
set C_modelArgList {
	{ window_0_0_read int 16 regular  }
	{ window_0_1_read int 15 regular  }
	{ window_0_2_read int 16 regular  }
	{ window_1_0_read int 15 regular  }
	{ window_1_2_read int 15 regular  }
	{ window_2_0_read int 16 regular  }
	{ window_2_1_read int 15 regular  }
	{ window_2_2_read int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "window_0_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_0_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_2_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 9} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ window_0_0_read sc_in sc_lv 16 signal 0 } 
	{ window_0_1_read sc_in sc_lv 15 signal 1 } 
	{ window_0_2_read sc_in sc_lv 16 signal 2 } 
	{ window_1_0_read sc_in sc_lv 15 signal 3 } 
	{ window_1_2_read sc_in sc_lv 15 signal 4 } 
	{ window_2_0_read sc_in sc_lv 16 signal 5 } 
	{ window_2_1_read sc_in sc_lv 15 signal 6 } 
	{ window_2_2_read sc_in sc_lv 16 signal 7 } 
	{ ap_return sc_out sc_lv 9 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "window_0_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_0_read", "role": "default" }} , 
 	{ "name": "window_0_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_0_1_read", "role": "default" }} , 
 	{ "name": "window_0_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_2_read", "role": "default" }} , 
 	{ "name": "window_1_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_0_read", "role": "default" }} , 
 	{ "name": "window_1_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_2_read", "role": "default" }} , 
 	{ "name": "window_2_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_0_read", "role": "default" }} , 
 	{ "name": "window_2_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_2_1_read", "role": "default" }} , 
 	{ "name": "window_2_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_2_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sobel_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sobel_kernel {
		window_0_0_read {Type I LastRead 0 FirstWrite -1}
		window_0_1_read {Type I LastRead 0 FirstWrite -1}
		window_0_2_read {Type I LastRead 0 FirstWrite -1}
		window_1_0_read {Type I LastRead 0 FirstWrite -1}
		window_1_2_read {Type I LastRead 0 FirstWrite -1}
		window_2_0_read {Type I LastRead 0 FirstWrite -1}
		window_2_1_read {Type I LastRead 0 FirstWrite -1}
		window_2_2_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	window_0_0_read { ap_none {  { window_0_0_read in_data 0 16 } } }
	window_0_1_read { ap_none {  { window_0_1_read in_data 0 15 } } }
	window_0_2_read { ap_none {  { window_0_2_read in_data 0 16 } } }
	window_1_0_read { ap_none {  { window_1_0_read in_data 0 15 } } }
	window_1_2_read { ap_none {  { window_1_2_read in_data 0 15 } } }
	window_2_0_read { ap_none {  { window_2_0_read in_data 0 16 } } }
	window_2_1_read { ap_none {  { window_2_1_read in_data 0 15 } } }
	window_2_2_read { ap_none {  { window_2_2_read in_data 0 16 } } }
}
set moduleName sobel_kernel
set isTopModule 0
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sobel_kernel}
set C_modelType { int 9 }
set C_modelArgList {
	{ window_0_0_read int 16 regular  }
	{ window_0_1_read int 15 regular  }
	{ window_0_2_read int 16 regular  }
	{ window_1_0_read int 15 regular  }
	{ window_1_2_read int 15 regular  }
	{ window_2_0_read int 16 regular  }
	{ window_2_1_read int 15 regular  }
	{ window_2_2_read int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "window_0_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_0_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_0_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_1_2_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_0_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_1_read", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "window_2_2_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 9} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ window_0_0_read sc_in sc_lv 16 signal 0 } 
	{ window_0_1_read sc_in sc_lv 15 signal 1 } 
	{ window_0_2_read sc_in sc_lv 16 signal 2 } 
	{ window_1_0_read sc_in sc_lv 15 signal 3 } 
	{ window_1_2_read sc_in sc_lv 15 signal 4 } 
	{ window_2_0_read sc_in sc_lv 16 signal 5 } 
	{ window_2_1_read sc_in sc_lv 15 signal 6 } 
	{ window_2_2_read sc_in sc_lv 16 signal 7 } 
	{ ap_return sc_out sc_lv 9 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "window_0_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_0_read", "role": "default" }} , 
 	{ "name": "window_0_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_0_1_read", "role": "default" }} , 
 	{ "name": "window_0_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_0_2_read", "role": "default" }} , 
 	{ "name": "window_1_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_0_read", "role": "default" }} , 
 	{ "name": "window_1_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_1_2_read", "role": "default" }} , 
 	{ "name": "window_2_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_0_read", "role": "default" }} , 
 	{ "name": "window_2_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "window_2_1_read", "role": "default" }} , 
 	{ "name": "window_2_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "window_2_2_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sobel_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "window_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2_2_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sobel_kernel {
		window_0_0_read {Type I LastRead 0 FirstWrite -1}
		window_0_1_read {Type I LastRead 0 FirstWrite -1}
		window_0_2_read {Type I LastRead 0 FirstWrite -1}
		window_1_0_read {Type I LastRead 0 FirstWrite -1}
		window_1_2_read {Type I LastRead 0 FirstWrite -1}
		window_2_0_read {Type I LastRead 0 FirstWrite -1}
		window_2_1_read {Type I LastRead 0 FirstWrite -1}
		window_2_2_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	window_0_0_read { ap_none {  { window_0_0_read in_data 0 16 } } }
	window_0_1_read { ap_none {  { window_0_1_read in_data 0 15 } } }
	window_0_2_read { ap_none {  { window_0_2_read in_data 0 16 } } }
	window_1_0_read { ap_none {  { window_1_0_read in_data 0 15 } } }
	window_1_2_read { ap_none {  { window_1_2_read in_data 0 15 } } }
	window_2_0_read { ap_none {  { window_2_0_read in_data 0 16 } } }
	window_2_1_read { ap_none {  { window_2_1_read in_data 0 15 } } }
	window_2_2_read { ap_none {  { window_2_2_read in_data 0 16 } } }
}
