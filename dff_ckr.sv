class dff_ckr;
dff_tx tx;
task run();
$display("CKR");
forever
begin
dff_cfg::mon2ckr.get(tx);
if(tx.d==tx.q)
$display($time, "data received correct d=%b, q=%b",tx.d,tx.q);
else
$display($time, "ERROR:data received Wrongly d=%b, q=%b",tx.d,tx.q);
end
endtask
endclass
