transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Luis/Downloads/PlacaDeInduccion/CambioZonas.vhd}
vcom -93 -work work {C:/Users/Luis/Downloads/PlacaDeInduccion/Potencia.vhd}
vcom -93 -work work {C:/Users/Luis/Downloads/PlacaDeInduccion/MiniDin.vhd}

