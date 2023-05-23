module hexsignedcomparatorTB();
  logic [15:0]a,b;
  logic l,e,g;
  wire L,E,G;
  hex_signedcomparator tb(.a(a),.b(b),.l(l),.e(e),.g(g),.L(L),.E(E),.G(G));
  initial begin
    $monitor(a,b,l,e,g,L,E,G);
    a=15'b0;b=15'b0;l=0;e=0;g=0;#59
    e=1;#59
    e=0;#59
    b[15]=1;#59
    b[15]=0;#59
    a[15]=1;#59
    a[15]=0;
  end
endmodule


