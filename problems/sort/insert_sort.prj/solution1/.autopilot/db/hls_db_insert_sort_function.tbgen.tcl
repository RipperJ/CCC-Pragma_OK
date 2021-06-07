set moduleName hls_db_insert_sort_function
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
set C_modelName {hls_db_insert_sort_function}
set C_modelType { void 0 }
set C_modelArgList {
	{ din_strm_V int 32 regular {fifo 0 volatile }  }
	{ kin_strm_V int 32 regular {fifo 0 volatile }  }
	{ strm_in_end_V int 1 regular {fifo 0 volatile }  }
	{ dout_strm_V int 32 regular {fifo 1 volatile }  }
	{ kout_strm_V int 32 regular {fifo 1 volatile }  }
	{ strm_out_end_V int 1 regular {fifo 1 volatile }  }
	{ sign uint 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "din_strm_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "din_strm.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "kin_strm_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "kin_strm.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "strm_in_end_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "strm_in_end.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dout_strm_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dout_strm.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "kout_strm_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "kout_strm.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "strm_out_end_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "strm_out_end.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "sign", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sign","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ din_strm_V_dout sc_in sc_lv 32 signal 0 } 
	{ din_strm_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ din_strm_V_read sc_out sc_logic 1 signal 0 } 
	{ kin_strm_V_dout sc_in sc_lv 32 signal 1 } 
	{ kin_strm_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ kin_strm_V_read sc_out sc_logic 1 signal 1 } 
	{ strm_in_end_V_dout sc_in sc_lv 1 signal 2 } 
	{ strm_in_end_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ strm_in_end_V_read sc_out sc_logic 1 signal 2 } 
	{ dout_strm_V_din sc_out sc_lv 32 signal 3 } 
	{ dout_strm_V_full_n sc_in sc_logic 1 signal 3 } 
	{ dout_strm_V_write sc_out sc_logic 1 signal 3 } 
	{ kout_strm_V_din sc_out sc_lv 32 signal 4 } 
	{ kout_strm_V_full_n sc_in sc_logic 1 signal 4 } 
	{ kout_strm_V_write sc_out sc_logic 1 signal 4 } 
	{ strm_out_end_V_din sc_out sc_lv 1 signal 5 } 
	{ strm_out_end_V_full_n sc_in sc_logic 1 signal 5 } 
	{ strm_out_end_V_write sc_out sc_logic 1 signal 5 } 
	{ sign sc_in sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "din_strm_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "din_strm_V", "role": "dout" }} , 
 	{ "name": "din_strm_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "din_strm_V", "role": "empty_n" }} , 
 	{ "name": "din_strm_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "din_strm_V", "role": "read" }} , 
 	{ "name": "kin_strm_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kin_strm_V", "role": "dout" }} , 
 	{ "name": "kin_strm_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kin_strm_V", "role": "empty_n" }} , 
 	{ "name": "kin_strm_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kin_strm_V", "role": "read" }} , 
 	{ "name": "strm_in_end_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_end_V", "role": "dout" }} , 
 	{ "name": "strm_in_end_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_end_V", "role": "empty_n" }} , 
 	{ "name": "strm_in_end_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_end_V", "role": "read" }} , 
 	{ "name": "dout_strm_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dout_strm_V", "role": "din" }} , 
 	{ "name": "dout_strm_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout_strm_V", "role": "full_n" }} , 
 	{ "name": "dout_strm_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout_strm_V", "role": "write" }} , 
 	{ "name": "kout_strm_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kout_strm_V", "role": "din" }} , 
 	{ "name": "kout_strm_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kout_strm_V", "role": "full_n" }} , 
 	{ "name": "kout_strm_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kout_strm_V", "role": "write" }} , 
 	{ "name": "strm_out_end_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_end_V", "role": "din" }} , 
 	{ "name": "strm_out_end_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_end_V", "role": "full_n" }} , 
 	{ "name": "strm_out_end_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_end_V", "role": "write" }} , 
 	{ "name": "sign", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "hls_db_insert_sort_function",
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
		"Port" : [
			{"Name" : "din_strm_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_sort_top_unsigned_int_unsigned_int_4_s_fu_40", "Port" : "din_strm_V"}]},
			{"Name" : "kin_strm_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_sort_top_unsigned_int_unsigned_int_4_s_fu_40", "Port" : "kin_strm_V"}]},
			{"Name" : "strm_in_end_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_sort_top_unsigned_int_unsigned_int_4_s_fu_40", "Port" : "strm_in_end_V"}]},
			{"Name" : "dout_strm_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_sort_top_unsigned_int_unsigned_int_4_s_fu_40", "Port" : "dout_strm_V"}]},
			{"Name" : "kout_strm_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_sort_top_unsigned_int_unsigned_int_4_s_fu_40", "Port" : "kout_strm_V"}]},
			{"Name" : "strm_out_end_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_sort_top_unsigned_int_unsigned_int_4_s_fu_40", "Port" : "strm_out_end_V"}]},
			{"Name" : "sign", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_insert_sort_top_unsigned_int_unsigned_int_4_s_fu_40", "Parent" : "0",
		"CDFG" : "insert_sort_top_unsigned_int_unsigned_int_4_s",
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
		"Port" : [
			{"Name" : "din_strm_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "din_strm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kin_strm_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "kin_strm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "strm_in_end_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "strm_in_end_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dout_strm_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dout_strm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kout_strm_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "kout_strm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "strm_out_end_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "strm_out_end_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sign", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	hls_db_insert_sort_function {
		din_strm_V {Type I LastRead 2 FirstWrite -1}
		kin_strm_V {Type I LastRead 2 FirstWrite -1}
		strm_in_end_V {Type I LastRead 1 FirstWrite -1}
		dout_strm_V {Type O LastRead -1 FirstWrite 3}
		kout_strm_V {Type O LastRead -1 FirstWrite 3}
		strm_out_end_V {Type O LastRead -1 FirstWrite 3}
		sign {Type I LastRead 0 FirstWrite -1}}
	insert_sort_top_unsigned_int_unsigned_int_4_s {
		din_strm_V {Type I LastRead 2 FirstWrite -1}
		kin_strm_V {Type I LastRead 2 FirstWrite -1}
		strm_in_end_V {Type I LastRead 1 FirstWrite -1}
		dout_strm_V {Type O LastRead -1 FirstWrite 3}
		kout_strm_V {Type O LastRead -1 FirstWrite 3}
		strm_out_end_V {Type O LastRead -1 FirstWrite 3}
		sign {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	din_strm_V { ap_fifo {  { din_strm_V_dout fifo_data 0 32 }  { din_strm_V_empty_n fifo_status 0 1 }  { din_strm_V_read fifo_update 1 1 } } }
	kin_strm_V { ap_fifo {  { kin_strm_V_dout fifo_data 0 32 }  { kin_strm_V_empty_n fifo_status 0 1 }  { kin_strm_V_read fifo_update 1 1 } } }
	strm_in_end_V { ap_fifo {  { strm_in_end_V_dout fifo_data 0 1 }  { strm_in_end_V_empty_n fifo_status 0 1 }  { strm_in_end_V_read fifo_update 1 1 } } }
	dout_strm_V { ap_fifo {  { dout_strm_V_din fifo_data 1 32 }  { dout_strm_V_full_n fifo_status 0 1 }  { dout_strm_V_write fifo_update 1 1 } } }
	kout_strm_V { ap_fifo {  { kout_strm_V_din fifo_data 1 32 }  { kout_strm_V_full_n fifo_status 0 1 }  { kout_strm_V_write fifo_update 1 1 } } }
	strm_out_end_V { ap_fifo {  { strm_out_end_V_din fifo_data 1 1 }  { strm_out_end_V_full_n fifo_status 0 1 }  { strm_out_end_V_write fifo_update 1 1 } } }
	sign { ap_none {  { sign in_data 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	din_strm_V { fifo_read 1 no_conditional }
	kin_strm_V { fifo_read 1 no_conditional }
	strm_in_end_V { fifo_read 1 no_conditional }
	dout_strm_V { fifo_write 1 no_conditional }
	kout_strm_V { fifo_write 1 no_conditional }
	strm_out_end_V { fifo_write 1 no_conditional }
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
