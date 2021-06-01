onerror {resume}
quietly virtual signal -install /TRCUTtb/trcutInstance/cutInstance { (context /TRCUTtb/trcutInstance/cutInstance )&{i , j }} CUTout
quietly virtual signal -install /TRCUTtb/trcutInstance/cutInstance { (context /TRCUTtb/trcutInstance/cutInstance )&{a , b , c , d }} CUTin
quietly WaveActivateNextPane {} 0
add wave -noupdate /TRCUTtb/CLKtb
add wave -noupdate /TRCUTtb/SEtb
add wave -noupdate /TRCUTtb/SItb
add wave -noupdate /TRCUTtb/SOtb
add wave -noupdate /TRCUTtb/trcutInstance/cutInstance/CUTin
add wave -noupdate /TRCUTtb/trcutInstance/cutInstance/CUTout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {37304 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {0 ps} {413674 ps}
