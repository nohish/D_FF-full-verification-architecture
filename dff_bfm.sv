class dff_bfm;
virtual dff_int vif;
dff_tx tx;
task run();
begin
$display("BFM");
vif=dff_cfg::vif;
forever
begin
dff_cfg::gen2bfm.get(tx);
drive();
end
end
endtask
task drive();
begin
// @(posedge vif.clk)
@(vif.cb)
vif.d<=tx.d;
end
endtask
endclass
