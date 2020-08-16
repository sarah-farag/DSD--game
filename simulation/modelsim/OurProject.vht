-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/05/2019 15:43:07"
                                                            
-- Vhdl Test Bench template for design  :  OurProject
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY OurProject_vhd_tst IS
END OurProject_vhd_tst;
ARCHITECTURE OurProject_arch OF OurProject_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL buttons : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clk1 : STD_LOGIC;
SIGNAL outl : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL outm : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT OurProject
	PORT (
	buttons : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	clk1 : IN STD_LOGIC;
	outl : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	outm : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : OurProject
	PORT MAP (
-- list connections between master ports and signals
	buttons => buttons,
	clk1 => clk1,
	outl => outl,
	outm => outm
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END OurProject_arch;
