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
  assign e = a^b;
  assign f = (c^d)&0;
  assign g = a^c;
  assign h = (b^d) | 1;

  //output elements
  //and element
  assign i = e & f;
  //or element
  assign j = g | h;
  
endmodule