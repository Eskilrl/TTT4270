iverilog -g2012 -o tb/sim.out -I src tb/top_tb.sv src/*.sv
vvp tb/sim.out
gtkwave waveform.vcd tb/conf.gtkw 


