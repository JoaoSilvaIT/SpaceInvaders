transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/ISEL/LIC/usbport_test/key_board_reader.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/key_decode.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/key_scan.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/key_control.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/multiplexor.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/decoder.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/counter.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/FFD.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/reg.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/comparador.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/adder.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/full_adder.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/output_files/clk_div.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/output_buffer.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/buffer_control.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/ring_buffer.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/ring_buffer_control.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/RAM.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/memory_address_control.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/adder3.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/reg3.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/lcd_dispatcher.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/lcd_serial_receiver.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/parity_check.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/shift_reg.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/score_display.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/dec2hex.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/ffd_score_display.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/dec_3_8.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/score_dispatcher.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/serial_control.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/score_serial_receiver.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/lcd_serial_controller.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/score_serial_controller.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/space_invaders.vhd}
vcom -93 -work work {C:/ISEL/LIC/usbport_test/shift_reg_7.vhd}

