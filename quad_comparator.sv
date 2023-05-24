module quadcomparator(input [3:0]a,b,input l,e,g,output L,E,G);
  logic [2:0]lt,eq,gt;
  bitcomparator D0(.a(a[0]),.b(b[0]),.l(l),.e(e),.g(g),.L(lt[0]),.E(eq[0]),.G(gt[0]));
  bitcomparator D1(.a(a[1]),.b(b[1]),.l(lt[0]),.e(eq[0]),.g(gt[0]),.L(lt[1]),.E(eq[1]),.G(gt[1]));
  bitcomparator D2(.a(a[2]),.b(b[2]),.l(lt[1]),.e(eq[1]),.g(gt[1]),.L(lt[2]),.E(eq[2]),.G(gt[2]));
  bitcomparator D3(.a(a[3]),.b(b[3]),.l(lt[2]),.e(eq[2]),.g(gt[2]),.L(L),.E(E),.G(G));
endmodule
