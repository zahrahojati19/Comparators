module quad_comparatorTB();
  logic [3:0]a,b;
  logic l,e,g;
  wire L,E,G;
  quad_comparator4bit tb(.a(a),.b(b),.l(l),.e(e),.g(g),.L(L),.E(E),.G(G));
  initial begin
    $monitor(a,b,l,e,g,E,G,L);
    a=4'b0;b=4'b0;l=0;e=0;g=0;#59
    a=4'b001;#59
    a=4'b0;#59
    b=4'b010;#59
    b=4'b0;#59
    l=1;#59
    l=0;#59
    g=1;#59
    g=0;#59
    e=1;#59
    e=0;
  end
endmodule
