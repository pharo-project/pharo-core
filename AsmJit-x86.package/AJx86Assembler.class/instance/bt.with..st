instructions generated
bt: aDestinationRegisterOrMemory with: aSourceRegisterOrImmediate
	"Bit Test
	Pseudo Code
-----------
CF = Bit(BitBase, BitOffset);

Description
-----------
Selects the bit in a bit string (specified with the first operand,
called the bit base) at the bit-position designated by the bit offset
(specified by the second operand) and stores the value of the bit in the
CF flag. The bit base operand can be a register or a memory location;
the bit offset operand can be a register or an immediate value:

-   If the bit base operand specifies a register, the instruction takes
    the modulo 16, 32, or 64 of the bit offset operand (modulo size
    depends on the mode and register size; 64-bit operands are available
    only in 64-bit mode).
-   If the bit base operand specifies a memory location, the operand
    represents the address of the byte in memory that contains the bit
    base (bit 0 of the specified byte) of the bit string. The range of
    the bit position that can be referenced by the offset operand
    depends on the operand size.

See also: Bit(BitBase, BitOffset) on page 3-11.

Some assemblers support immediate bit offsets larger than 31 by using
the immediate bit offset field in combination with the displacement
field of the memory operand. In this case, the low-order 3 or 5 bits (3
for 16-bit operands, 5 for 32-bit operands) of the immediate bit offset
are stored in the immediate bit offset field, and the high-order bits
are shifted and combined with the byte displacement in the addressing
mode by the assembler. The processor will ignore the high order bits if
they are not zero.

When accessing a bit in memory, the processor may access 4 bytes
starting from the memory address for a 32-bit operand size, using by the
following relationship:

Effective Address + (4 \* (BitOffset DIV 32))

Or, it may access 2 bytes starting from the memory address for a 16-bit
operand, using this relationship:

Effective Address + (2 \* (BitOffset DIV 16))

It may do so even when only a single byte needs to be accessed to reach
the given bit. When using this bit addressing mechanism, software should
avoid referencing areas of memory close to address space holes. In
particular, it should avoid references to memory-mapped I/O registers.
Instead, software should use the MOV instructions to load from or store
to these addresses, and use the register form of these instructions to
manipulate the data.

In 64-bit mode, the instruction's default operation size is 32 bits.
Using a REX prefix in the form of REX.R permits access to additional
registers (R8-R15). Using a REX prefix in the form of REX.W promotes
operation to 64 bit operands. See the summary chart at the beginning of
this section for encoding data and limits.

"
	^ self 
		addInstruction: #bt
		operands: { aDestinationRegisterOrMemory . aSourceRegisterOrImmediate }