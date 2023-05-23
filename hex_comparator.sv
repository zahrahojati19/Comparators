module hexcomparator(input [15:0]a,b,input l,e,g,output L,E,G);
  logic [2:0]lt,eq,gt;
  quad_comparator4bit B1(.a(a[3:0]),.b(b[3:0]),.l(l),.e(e),.g(g),.L(lt[0]),.E(eq[0]),.G(gt[0]));
  quad_comparator4bit B2(.a(a[7:4]),.b(b[7:4]),.l(lt[0]),.e(eq[0]),.g(gt[0]),.L(lt[1]),.E(eq[1]),.G(gt[1]));
  quad_comparator4bit B3(.a(a[11:8]),.b(b[11:8]),.l(lt[1]),.e(eq[1]),.g(gt[1]),.L(lt[2]),.E(eq[2]),.G(gt[2]));
  quad_comparator4bit B4(.a(a[15:12]),.b(b[15:12]),.l(lt[2]),.e(eq[2]),.g(gt[2]),.L(L),.E(E),.G(G));
endmodule