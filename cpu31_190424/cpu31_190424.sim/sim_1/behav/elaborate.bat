@echo off
set xv_path=D:\\TOOLS\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 85b8ed08e0284f00b2f042703e0b48d5 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L xpm -L dist_mem_gen_v8_0_10 -L unisims_ver -L unimacro_ver -L secureip --snapshot cpu_tb_behav xil_defaultlib.cpu_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
