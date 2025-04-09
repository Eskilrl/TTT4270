yosys -p "read_verilog -sv src/CounterModule.sv src/DataCombiner.sv src/UART.sv src/UARTBuffer.sv src/top_test.sv; synth_ice40 -blif bin/timer.blif"

arachne-pnr -d 1k -p include/timer_board-constraints.pcf -P vq100 -o bin/timer.txt bin/timer.blif

icepack bin/timer.txt bin/timer.bin

