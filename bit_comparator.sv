module bitcomparator(input a,b,l,e,g,output E,L,G);
  wire abar,bbar,bba,abb,nor1,andl,andg,nor2,ebar,lbar,gbar,LBAR,GBAR;
  not #(7,5) G0(abar,a);
  not #(7,5) G1(bbar,b);
  nor #(14,10) G2(abb,bbar,a);
  nor #(14,10) G3(bba,abar,b);
  nor #(14,10) G4(norl,abb,bba);
  not #(7,5) G5(nor2,nor1);
  not #(7,5) G6(ebar,e);
  nor #(14,10) G7(E,nor2,ebar);
  not #(7,5) G8(lbar,l);
  nor #(14,10) G9(andl,nor2,lbar);
  nor #(14,10) G10(LBAR,andl,abb);
  not #(7,5) G11(L,LBAR);
  not #(7,5) G12(gbar,g);
  nor #(14,10) G13(andg,nor2,gbar);
  nor #(14,10) G14(GBAR,andg,bba);
  not #(7,5) G15(G,GBAR);
endmodule
