transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {U:/EE316/EE316_Project_1/SRAM_Controller.vhd}
vcom -93 -work work {U:/EE316/EE316_Project_1/btn_debounce_toggle.vhd}
vcom -93 -work work {U:/EE316/EE316_Project_1/clk_enabler.vhd}
vcom -93 -work work {U:/EE316/EE316_Project_1/DE2_115.vhd}
vcom -93 -work work {U:/EE316/EE316_Project_1/rom1p.vhd}
vcom -93 -work work {U:/EE316/EE316_Project_1/top_level.vhd}
vcom -93 -work work {U:/EE316/EE316_Project_1/reset_delay.vhd}
vcom -93 -work work {U:/EE316/EE316_Project_1/univ_bin_counter.vhd}
vcom -93 -work work {U:/EE316/EE316_Project_1/stateMachine.vhd}
vcom -93 -work work {U:/EE316/EE316_Project_1/Shift_Register.vhd}
vcom -93 -work work {U:/EE316/EE316_Project_1/Shift_Register_Address.vhd}
vcom -93 -work work {U:/EE316/EE316_Project_1/LUT.vhd}
vcom -93 -work work {U:/EE316/EE316_Project_1/7seg_controller.vhd}
vcom -93 -work work {U:/EE316/EE316_Project_1/shift_Register_controller.vhd}

