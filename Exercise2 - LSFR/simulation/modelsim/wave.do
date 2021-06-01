onerror {resume}
quietly virtual signal -install /TRCUTwithMISRtb/dut/trcutInstance { (context /TRCUTwithMISRtb/dut/trcutInstance )&{SOa , SOb , SOc , SO }} ScanChain
quietly virtual signal -install /TRCUTwithMISRtb/dut/trcutInstance { (context /TRCUTwithMISRtb/dut/trcutInstance )&{i_out , j_out }} CUT
quietly WaveActivateNextPane {} 0
add wave -noupdate /TRCUTwithMISRtb/CLKtb
add wave -noupdate /TRCUTwithMISRtb/SEtb
add wave -noupdate /TRCUTwithMISRtb/dut/lsfr_out
add wave -noupdate /TRCUTwithMISRtb/dut/trcutInstance/CUT
add wave -noupdate /TRCUTwithMISRtb/dut/trcutInstance/ScanChain
add wave -noupdate /TRCUTwithMISRtb/dut/misr_output
add wave -noupdate /TRCUTwithMISRtb/signtb
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {615950 ps}
