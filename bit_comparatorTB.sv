module bit_comparatorTB();
  logic a,b,l,e,g;
  wire L,E,G;
  bitcomparator2 tb(.a(a),.b(b),.l(l),.e(e),.g(g),.L(L),.G(G),.E(E));
  initial begin
    $monitor(a,b,l,e,g,L,E,G);
    a=0;b=0;l=0;e=1;g=0;#59
    e=0;#59
    g=1;#59
    g=0;#59
    l=1;#59
    l=0;#59
    a=1;#59
    a=0;b=1;#59
    b=0;
  end
endmodule
