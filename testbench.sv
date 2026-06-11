// or browse Examples

`include "d_ff.v"
`include "dff_cfg.sv"
`include "dff_tx.sv"
`include "dff_ckr.sv"
`include "dff_cov.sv"
`include "dff_mon.sv"
`include "dff_bfm.sv"
`include "dff_gen.sv"
`include "dff_env.sv"
`include "dff_int.sv"
`include "dff_tb.sv"

module top;
logic clk,rst;
d_ff
dut(.clk(inf.clk),.rst(inf.rst),.d(inf.d),
.q(inf.q));
dff_int inf(clk,rst);
dff_tb tb();

initial
begin
clk=0;
forever #5 clk=~clk;
end

initial
begin
rst=1;
repeat(2)@(posedge clk);
rst=0;
#100 $finish;
end

initial
begin
dff_cfg::vif=inf;
end

initial begin
$dumpfile("dump.vcd");
$dumpvars(1);
end
endmodule
