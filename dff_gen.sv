class dff_gen;
dff_tx tx;
virtual dff_int vif;

task run();
begin
$display("GEN");
vif=dff_cfg::vif;
wait(vif.rst==0);
for(int i=0;i<10;i++)
begin
tx=new();
tx.randomize() with {d dist
{1:=5,0:=5};};
dff_cfg::gen2bfm.put(tx);
end
end
endtask
endclass
