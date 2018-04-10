import angr
proj = angr.Project('./instructions/vpxor_xmm_xmm_xmm/vpxor_xmm_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()