// Autogenerated using stratification.
requires "x86-configuration.k"

module MOVB-R8-RH
  imports X86-CONFIGURATION

  rule <k>
    execinstr (movb R1:Rh, R2:R8,  .Operands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> concatenateMInt( extractMInt( getParentValue(R2, RSMap), 0, 56), extractMInt( getParentValue(R1, RSMap), 48, 56))
)

    </regstate>
    
endmodule

module MOVB-R8-RH-SEMANTICS
  imports MOVB-R8-RH
endmodule
