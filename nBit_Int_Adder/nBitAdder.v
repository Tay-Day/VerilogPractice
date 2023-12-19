
module N_bit_adder
#(parameter N = 8)
(
    input [N-1:0] input1, input2,
    output [N-1:0] answer
);
    wire [N-1:0] carry;
    wire carry_out;
    genvar i;

    generate
      for (i = 0; i < N; i = i + 1) begin
        if (i == 0)
          half_adder ha (input1[0], input2[0], answer[0], carry[0]);
        else
          full_adder fa (input1[i], input2[i], carry[i-1], answer[i], carry[i]);
      end
        assign carry_out = carry[N-1];
    endgenerate
endmodule


module half_adder(bit1, bit2, sum, carry);
    input bit1, bit2;
    output sum, carry;
    assign sum = bit1 ^ bit2;
    assign carry = bit1 & bit2;
endmodule

module full_adder (
    input a, b, cin,
    output sum, cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (cin & (a ^ b));
 
endmodule
