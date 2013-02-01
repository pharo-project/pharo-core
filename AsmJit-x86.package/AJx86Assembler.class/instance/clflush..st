instructions generated
clflush: aMemoryOperand
	"Flush Cache Line
	Pseudo Code
-----------
Flush_Cache_Line(SRC);

Description
-----------
Invalidates the cache line that contains the linear address specified
with the source operand from all levels of the processor cache hierarchy
(data and instruction). The invalidation is broadcast throughout the
cache coherence domain. If, at any level of the cache hierarchy, the
line is inconsistent with memory (dirty) it is written to memory before
invalidation. The source operand is a byte memory location.

The availability of CLFLUSH is indicated by the presence of the CPUID
feature flag CLFSH (bit 19 of the EDX register, see 'CPUID—CPU
Identification' in this chapter).The aligned cache line size affected is
also indicated with the CPUID instruction (bits 8 through 15 of the EBX
register when the initial value in the EAX register is 1).

The memory attribute of the page containing the affected line has no
effect on the behavior of this instruction. It should be noted that
processors are free to speculatively fetch and cache data from system
memory regions assigned a memory-type allowing for speculative reads
(such as, the WB, WC, and WT memory types). PREFETCHh instructions can
be used to provide the processor with hints for this speculative
behavior. Because this speculative fetching can occur at any time and is
not tied to instruction execution, the CLFLUSH instruction is not
ordered with respect to PREFETCHh instructions or any of the speculative
fetching mechanisms (that is, data can be speculatively loaded into a
cache line just before, during, or after the execution of a CLFLUSH
instruction that references the cache line).

CLFLUSH is only ordered by the MFENCE instruction. It is not guaranteed
to be ordered by any other fencing or serializing instructions or by
another CLFLUSH instruction. For example, software can use an MFENCE
instruction to ensure that previous stores are included in the
write-back.

The CLFLUSH instruction can be used at all privilege levels and is
subject to all permission checking and faults associated with a byte
load (and in addition, a CLFLUSH instruction is allowed to flush a
linear address in an execute-only segment). Like a load, the CLFLUSH
instruction sets the A bit but not the D bit in the page tables.

The CLFLUSH instruction was introduced with the SSE2 extensions;
however, because it has its own CPUID feature flag, it can be
implemented in IA-32 processors that do not include the SSE2 extensions.
Also, detecting the presence of the SSE2 extensions with the CPUID
instruction does not guarantee that the CLFLUSH instruction is
implemented in the processor.

CLFLUSH operation is the same in non-64-bit modes and 64-bit mode.

"
	^ self 
		addInstruction: #clflush
		operands: { aMemoryOperand }