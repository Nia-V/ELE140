#============================= TB_Test.do ======================================
#ELE140 Conception des systèmes numeriques
#AUT2025, Ecole de technologie superieure
#================================================================================
#Clean up
vlib work
vdel -all work
vlib work
vmap work work

# Compilation de tous les fichiers en ordre hierarchique
vcom DECODEUR.vhd

vcom serialtester.vhd
vcom emetteur.vhd
vcom Recepteur.vhd

vcom TESTBENCH_DECODEUR.vhd
vsim TB_DEC

#add wave *

add wave *

configure wave -namecolwidth 300
configure wave -namecolwidth 100
update

run 5000 ns


# Zoomer sur la periode de simulation
wave zoom full
