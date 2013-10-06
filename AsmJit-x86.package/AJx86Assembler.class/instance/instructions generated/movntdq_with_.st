movntdq: aRegisterOrMemory1 with: aRegisterOrMemory2
	"Store Double Quadword Using Non-Temporal Hint
	Pseudo Code
-----------
DEST = SRC;

Description
-----------
Moves the double quadword in the source operand (second operand) to the
destination operand (first operand) using a non-temporal hint to prevent
caching of the data during the write to memory. The source operand is an
XMM register, which is assumed to contain integer data (packed bytes,
words, doublewords, or quadwords). The destination operand is a 128-bit
memory location.

The non-temporal hint is implemented by using a write combining (WC)
memory type protocol when writing the data to memory. Using this
protocol, the processor does not write the data into the cache
hierarchy, nor does it fetch the corresponding cache line from memory
into the cache hierarchy. The memory type of the region being written to
can override the non-temporal hint, if the memory address specified for
the non-temporal store is in an uncacheable (UC) or write protected (WP)
memory region. For more information on non-temporal stores, see 'Caching
of Temporal vs. Non-Temporal Data' in Chapter 10 in theIntel®64 and
IA-32 Architectures Software Developer's Manual, Volume 1.

Because the WC protocol uses a weakly-ordered memory consistency model,
a fencing operation implemented with the SFENCE or MFENCE instruction
should be used in conjunction with MOVNTDQ instructions if multiple
processors might use different memory types to read/write the
destination memory locations.

In 64-bit mode, use of the REX.R prefix permits this instruction to
access additional registers (XMM8-XMM15).

"
	^ self 
		addInstruction: #movntdq
		operands: { aRegisterOrMemory1 . aRegisterOrMemory2 }