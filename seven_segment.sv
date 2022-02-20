module seven_segment(	input  logic [3:0]in, 
						output logic [6:0]out
);

logic [3:0]number_in;
logic [6:0]segment_out;

assign number_in[3:0] = in[3:0];
assign out[6:0] 	  = segment_out[6:0];

always_comb
begin
	case(number_in)
		4'h0: segment_out = 7'b1000000;
		4'h1: segment_out = 7'b1111001;
		4'h2: segment_out = 7'b0100100;
		4'h3: segment_out = 7'b0110000;
		4'h4: segment_out = 7'b0011001;
		4'h5: segment_out = 7'b0010010;
		4'h6: segment_out = 7'b0000010;
		4'h7: segment_out = 7'b1111000;
		4'h8: segment_out = 7'b0000000;
		4'h9: segment_out = 7'b0010000;
		4'ha: segment_out = 7'b0001000;
		4'hb: segment_out = 7'b0000011;
		4'hc: segment_out = 7'b1000110;
		4'hd: segment_out = 7'b0100001;
		4'he: segment_out = 7'b0000110;
		4'hf: segment_out = 7'b0001110;
		default:	segment_out = 7'b1111111;
	endcase
end
endmodule