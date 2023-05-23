module hex_signedcomparator(input [15:0]a,b,input l,e,g,output L,E,G);
  wire lt,eq,gt;
  bitcomparator2 G0(.a(a[15]),.b(b[15]),.l(l),.e(e),.g(g),.L(gt),.E(eq),.G(lt));
  hexcomp16bit G1(.a(b[15:0]),.b(a[15:0]),.l(lt),.e(eq),.g(gt),.L(L),.E(E),.G(G));
endmodule
