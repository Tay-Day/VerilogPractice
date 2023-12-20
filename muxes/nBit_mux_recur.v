
module nBit_Mux#(
    parameter N = 16
)(
    input [N-1:0] inputs,
    input [$clog2(N)-1:0] selectbits,
    output wire answer
);
    function integer clog2;
        input integer value;
            integer temp;
        begin
            temp = value - 1;
            for (clog2 = 0; temp > 0; clog2 = clog2 + 1) begin
                temp = temp >> 1;
            end
        end
    endfunction
    generate
        if (N == 2) begin
            twoToOne baseMux (selectbits[0], inputs[0], inputs[1], answer);
        end
        else begin
            wire rightOutput, leftOutput;
            nBit_Mux #(N>>1) muxLeft(inputs[N-1:(N>>1)], selectbits[$clog2(N)-2:0], leftOutput);
            nBit_Mux #(N>>1) muxRight(inputs[(N>>1)-1:0], selectbits[$clog2(N)-2:0], rightOutput);
            twoToOne internMux(
                selectbits[$clog2(N)-1],
                muxRight.answer,
                muxLeft.answer,
                answer);
        end
    endgenerate
endmodule


module twoToOne (
    input s, d0, d1,
    output wire answer
);
    assign answer = s ? d1 : d0;
endmodule