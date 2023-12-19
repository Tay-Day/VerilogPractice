`include "nBit_mux_recur.v"

module nBit_mux_base_tb;
    reg [1:0] inputs;
    reg selectbit;
    wire answer;
    nBit_Mux uut (.inputs(inputs), .selectbits(selectbit), .answer(answer));
    initial begin
        $dumpfile("nBit_mux_base_tb.vcd");
        $dumpvars(0, nBit_mux_base_tb);
        inputs = 'b10;
        selectbit = 'b1;
        #20;
        inputs = 'b01;
        selectbit = 'b0;
        #20;
        inputs = 'b01;
        selectbit = 'b1;
        #20;
        inputs = 'b10;
        selectbit = 'b0;
        #20;
    end
endmodule