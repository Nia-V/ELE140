vlib work
vdel -all work
vlib work
vmap work work
vcom CelluleType.vhd
vcom CompNBits.vhd
vcom Adder.vhd
vcom P1.vhd
vcom TB_P1.vhd
vsim TB_P1.vhd

add wave*

configure wave -namecolwidth 300
configure wave -namecolwidth 100
update

run 3000ns
wave zoom full