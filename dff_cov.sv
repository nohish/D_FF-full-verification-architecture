class dff_cov;
dff_tx tx;
covergroup dff_cg;
out: coverpoint tx.q{
bins one={1};
bins zero={0};
}
option.per_instance=1;
endgroup
function new();
dff_cg=new();
endfunction
task run();
$display("COV");
forever
begin
dff_cfg::mon2cov.get(tx);
dff_cg.sample();
end
endtask
endclass
