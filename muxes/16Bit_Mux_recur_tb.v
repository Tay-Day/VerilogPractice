`include "nBit_mux_recur.v"

module sixTBit_mux_recur_tb;
    reg [15:0] inputs;
    reg [3:0] selectbits;
    wire answer;
    nBit_Mux uut (.inputs(inputs), .selectbits(selectbits), .answer(answer));
    initial begin
        $dumpfile("16Bit_Mux_recur_tb.vcd");
        $dumpvars(0, sixTBit_mux_recur_tb);
        inputs = 'b1000000000000000;
        selectbits = 'b1111;
        #20;
        inputs = 'b0100000000000000;
        selectbits = 'b1110;
        #20;
        inputs = 'b0000100000000000;
        selectbits = 'b1011;
        #20;
        inputs = 'b0000000010000000;
        selectbits = 'b0111;
        #20;
        inputs = 'b0000010000000000;
        selectbits = 'b1010;
        #20;
        inputs = 'b0000000000000010;
        selectbits = 'b0001;
        #20;
        inputs = 'b0000000000001000;
        selectbits = 'b0011;
        #20;
        inputs = 'b0000000000000001;
        selectbits = 'b0000;
        #20;
    end
endmodule