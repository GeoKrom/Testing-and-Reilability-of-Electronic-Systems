`timescale 1ns/1ps

module CUT(a, b, c, d, i, j);
  
  input a,b,c,d;
  output i,j;
  
  wire a,b,c,d; // Input wires
  wire e,f,g,h; // Mid-level wires
  wire i,j;     // Output wires
  
  //Structure of the circuit
  
  //xor elements
  //input elements
  xor E1(e,a,b);
  xor E2(f,c,d);
  xor E3(g,a,c);
  xor E4(h,b,d);
  
  //output elements
  //and element
  and E5(i,e,f);
  //or element
  or E6(j,g,h);
  
endmodule