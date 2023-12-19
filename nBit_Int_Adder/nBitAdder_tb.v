module tb_nBitAdder;
    reg [7:0] i1, i2;
    wire [7:0] answer;
    N_bit_adder uut (.input1(i1), .input2(i2), .answer(answer));
    initial begin
        $dumpfile("nBitAdder.vcd");
        $dumpvars(0, tb_nBitAdder);
        i1 = 230;
        i2 = 10;
        #100;
        i1 = 256;
        i2 = 1;
        #100;
        i1 = -1;
        i2 = -3;
        #100;
        i1 = 100;
        i2 = 200;
        #100;
        i1 = 30;
        i2 = 70;
        #100;
        i1 = 2;
        i2 = -255;
        #100;
    end
endmodule