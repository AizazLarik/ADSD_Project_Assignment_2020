# Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk_100mhz }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
# syc_clk will be constrained by the MIG IP; commenting it avoids double clock definition and overridden clock definition warnings
create_clock -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk_100mhz}];

set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { btnc }]; #IO_L9P_T1_DQS_14 Sch=btnc
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { btnu }]; #IO_L4N_T0_D05_14 Sch=btnu
set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { btnl }]; #IO_L12P_T1_MRCC_14 Sch=btnl
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { btnr }]; #IO_L10N_T1_D15_14 Sch=btnr
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { btnd }]; #IO_L9N_T1_DQS_D13_14 Sch=btnd

#set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVDS     } [get_ports { vauxn3 }]; #IO_L9N_T1_DQS_AD3N_15 Sch=xa_n[1]
#set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVDS     } [get_ports { vauxp3 }]; #IO_L9P_T1_DQS_AD3P_15 Sch=xa_p[1]

set_property -dict { PACKAGE_PIN A11   IOSTANDARD LVCMOS33 } [get_ports { aud_pwm }]; #IO_L4N_T0_15 Sch=aud_pwm
set_property -dict { PACKAGE_PIN D12   IOSTANDARD LVCMOS33 } [get_ports { aud_sd }]; #IO_L6P_T0_15 Sch=aud_sd


# LEDs
set_property IOSTANDARD LVCMOS33 [get_ports {led[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN H17 [get_ports {led[15]}]
set_property PACKAGE_PIN K15 [get_ports {led[14]}]
set_property PACKAGE_PIN J13 [get_ports {led[13]}]
set_property PACKAGE_PIN N14 [get_ports {led[12]}]
set_property PACKAGE_PIN R18 [get_ports {led[11]}]
set_property PACKAGE_PIN U17 [get_ports {led[10]}]
set_property PACKAGE_PIN V17 [get_ports {led[9]}]
set_property PACKAGE_PIN U16 [get_ports {led[8]}]
set_property PACKAGE_PIN V16 [get_ports {led[7]}]
set_property PACKAGE_PIN T15 [get_ports {led[6]}]
set_property PACKAGE_PIN U14 [get_ports {led[5]}]
set_property PACKAGE_PIN T16 [get_ports {led[4]}]
set_property PACKAGE_PIN V15 [get_ports {led[3]}]
set_property PACKAGE_PIN V14 [get_ports {led[2]}]
set_property PACKAGE_PIN V12 [get_ports {led[1]}]
set_property PACKAGE_PIN V11 [get_ports {led[0]}]

#Switches
set_property IOSTANDARD LVCMOS33 [get_ports {sw[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[0]}]
set_property PACKAGE_PIN J15 [get_ports {sw[15]}]
set_property PACKAGE_PIN L16 [get_ports {sw[14]}]
set_property PACKAGE_PIN M13 [get_ports {sw[13]}]
set_property PACKAGE_PIN R15 [get_ports {sw[12]}]
set_property PACKAGE_PIN R17 [get_ports {sw[11]}]
set_property PACKAGE_PIN T18 [get_ports {sw[10]}]
set_property PACKAGE_PIN U18 [get_ports {sw[9]}]
set_property PACKAGE_PIN R13 [get_ports {sw[8]}]
set_property PACKAGE_PIN T8 [get_ports {sw[7]}]
set_property PACKAGE_PIN U8 [get_ports {sw[6]}]
set_property PACKAGE_PIN R16 [get_ports {sw[5]}]
set_property PACKAGE_PIN T13 [get_ports {sw[4]}]
set_property PACKAGE_PIN H6 [get_ports {sw[3]}]
set_property PACKAGE_PIN U12 [get_ports {sw[2]}]
set_property PACKAGE_PIN U11 [get_ports {sw[1]}]
set_property PACKAGE_PIN V10 [get_ports {sw[0]}]
