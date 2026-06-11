interface dff_int(input logic clk,rst);
logic d;
logic q;
clocking cb @(posedge clk);
//default input #0 output #9;
output d;
input q;
endclocking
endinterface
