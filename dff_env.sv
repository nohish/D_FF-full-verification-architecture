class dff_env;
dff_gen gen=new();
dff_bfm bfm=new();
dff_mon mon=new();
dff_ckr ckr=new();
dff_cov cov=new();

task run();
fork
gen.run();
bfm.run();
mon.run();
ckr.run();
cov.run();
join
endtask
endclass
