transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/GUC/Semester 5/CSEN 605/Assignments/Assigment 1/OurProject/sixty_counter.vhd}
vcom -93 -work work {D:/GUC/Semester 5/CSEN 605/Assignments/Assigment 1/OurProject/OurProject.vhd}
vcom -93 -work work {D:/GUC/Semester 5/CSEN 605/Assignments/Assigment 1/OurProject/clk_generator.vhd}
vcom -93 -work work {D:/GUC/Semester 5/CSEN 605/Assignments/Assigment 1/OurProject/seven_seg_dec.vhd}

vcom -93 -work work {D:/GUC/Semester 5/CSEN 605/Assignments/Assigment 1/OurProject/simulation/modelsim/OurProject.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  arwa2

add wave *
view structure
view signals
run -all
