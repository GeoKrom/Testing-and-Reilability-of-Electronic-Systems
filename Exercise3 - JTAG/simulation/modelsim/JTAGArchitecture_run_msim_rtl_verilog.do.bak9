transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/3.JTAG {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/3.JTAG/TapControllerFSM.v}

vlog -vlog01compat -work work +incdir+C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/3.JTAG {C:/Users/geokr/OneDrive/Desktop/Projects/TestingRelElecSys/3.JTAG/TapControllerFSMtb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  TapControllerFSMtb

add wave *
view structure
view signals
run -all
