class dff_mon;
virtual dff_int vif;
dff_tx tx;//=new();
task run();
begin
$display("MON");
vif=dff_cfg::vif;
forever
begin
tx=new();
// @(posedge vif.clk)
@(vif.cb);
tx.d=vif.d;
tx.q=vif.q;
dff_cfg::mon2ckr.put(tx);
dff_cfg::mon2cov.put(tx);
end
end
endtask
endclass
