vlib work
vdel -all work
vlib work
vmap work work
vcom CelluleType.vhd
vcom CompNBits.vhd
vcom txt_util.vhd
vcom TB_Comparateur.vhd

vsim TB_Comparateur

add wave -hex *

configure wave -namecolwidth 300
configure wave -namecolwidth 100
update

run 3000ns
wave zoom full