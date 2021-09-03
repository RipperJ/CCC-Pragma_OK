# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name din_strm_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_din_strm_V \
    op interface \
    ports { din_strm_V_dout { I 32 vector } din_strm_V_empty_n { I 1 bit } din_strm_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name kin_strm_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kin_strm_V \
    op interface \
    ports { kin_strm_V_dout { I 32 vector } kin_strm_V_empty_n { I 1 bit } kin_strm_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name strm_in_end_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_strm_in_end_V \
    op interface \
    ports { strm_in_end_V_dout { I 1 vector } strm_in_end_V_empty_n { I 1 bit } strm_in_end_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name dout_strm_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dout_strm_V \
    op interface \
    ports { dout_strm_V_din { O 32 vector } dout_strm_V_full_n { I 1 bit } dout_strm_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name kout_strm_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kout_strm_V \
    op interface \
    ports { kout_strm_V_din { O 32 vector } kout_strm_V_full_n { I 1 bit } kout_strm_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name strm_out_end_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_strm_out_end_V \
    op interface \
    ports { strm_out_end_V_din { O 1 vector } strm_out_end_V_full_n { I 1 bit } strm_out_end_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name sign \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sign \
    op interface \
    ports { sign { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


