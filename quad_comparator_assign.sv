module quad_comparator4bit(input [3:0]a,b, input l,e,g, output L,E,G);
  assign {L,G,E}= (a<b | (a==b & l==1))?3'b100:
                     (a>b | (a==b & g==1))?3'b010:
                     (a==b | e==1)?{l,g,e}:3'b001;
endmodule
