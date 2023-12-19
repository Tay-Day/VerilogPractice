`include "nBit_mux_recur.v"

module nBit_mux_recur_tb;
    reg [3:0] inputs;
    reg [1:0] selectbits;
    wire answer;
    nBit_Mux uut (.inputs(inputs), .selectbits(selectbits), .answer(answer));
    initial begin
        $dumpfile("nBit_mux_recur_tb.vcd");
        $dumpvars(0, nBit_mux_recur_tb);
        inputs = 'b1000;
        selectbits = 'b11;
        #20;
        inputs = 'b0100;
        selectbits = 'b10;
        #20;
        inputs = 'b0010;
        selectbits = 'b01;
        #20;
        inputs = 'b0001;
        selectbits = 'b00;
        #20;
        inputs = 'b0111;
        selectbits = 'b11;
        #20;
        inputs = 'b1011;
        selectbits = 'b10;
        #20;
        inputs = 'b1101;
        selectbits = 'b01;
        #20;
        inputs = 'b1110;
        selectbits = 'b00;
        #20;
    end
endmodule