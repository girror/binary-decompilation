// Autogenerated using stratification.
requires "x86-configuration.k"

module MOVBEQ-M64-R64
  imports X86-CONFIGURATION

  context execinstr(movbeq:Opcode R1:R64, HOLE:Mem,  .Operands) [result(MemOffset)]
  
  rule <k>
    execinstr (movbeq:Opcode R1:R64, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      loadFromMemory( MemOff, 64) ~>
      execinstr (movbeq R1, memOffset( MemOff),  .Operands)
  ...</k>
    <regstate> RSMap:Map </regstate>
          
  rule <k>
    memLoadValue(Mem64:MInt):MemLoadValue ~> execinstr (movbeq:Opcode R1:R64, memOffset( MemOff:MInt):MemOffset,  .Operands) =>
      
            storeToMemory(
              concatenateMInt( concatenateMInt( concatenateMInt( concatenateMInt( concatenateMInt( concatenateMInt( concatenateMInt( extractMInt( getParentValue(R1, RSMap), 56, 64), extractMInt( getParentValue(R1, RSMap), 48, 56)), extractMInt( getParentValue(R1, RSMap), 40, 48)), extractMInt( getParentValue(R1, RSMap), 32, 40)), extractMInt( getParentValue(R1, RSMap), 24, 32)), extractMInt( getParentValue(R1, RSMap), 16, 24)), extractMInt( getParentValue(R1, RSMap), 8, 16)), extractMInt( getParentValue(R1, RSMap), 0, 8)),
              MemOff,
              64
            )
          
  ...</k>
    <regstate> RSMap:Map </regstate>
endmodule
