`include "nBit_mux_recur.v"

module twoToOne_tb;
    reg s;
    reg d0;
    reg d1;
    wire answer;
    twoToOne uut (.s(s), .d0(d0), .d1(d1), .answer(answer));
    initial begin
        $dumpfile("twoToOne_tb.vcd");
        $dumpvars(0, twoToOne_tb);
        s = 'b0;
        d0 = 'b1;
        d1 = 'b0;
        #20;
         s = 'b1;
        d0 = 'b0;
        d1 = 'b1;
        #20;
    end
endmodule