instructions generated
btc: aDestinationRegisterOrMemory with: aSourceRegisterOrImmediate
	"Bit Test and Complement
	Pseudo Code
-----------
CF = Bit(BitBase, BitOffset);
Bit(BitBase, BitOffset) = NOT Bit(BitBase, BitOffset);

Description
-----------
Selects the bit in a bit string (specified with the first operand,
called the bit base) at the bit-position designated by the bit offset
operand (second operand), stores the value of the bit in the CF flag,
and complements the selected bit in the bit string. The bit base operand
can be a register or a memory location; the bit offset operand can be a
register or an immediate value:

-   If the bit base operand specifies a register, the instruction takes
    the modulo 16, 32, or 64 of the bit offset operand (modulo size
    depends on the mode and register size; 64-bit operands are available
    only in 64-bit mode). This allows any bit position to be selected.
-   If the bit base operand specifies a memory location, the operand
    represents the address of the byte in memory that contains the bit
    base (bit 0 of the specified byte) of the bit string. The range of
    the bit position that can be referenced by the offset operand
    depends on the operand size.

See also: Bit(BitBase, BitOffset) on page 3-11.

Some assemblers support immediate bit offsets larger than 31 by using
the immediate bit offset field in combination with the displacement
field of the memory operand. See 'BT—Bit Test' in this chapter for more
information on this addressingmechanism.

This instruction can be used with a LOCK prefix to allow the instruction
to be executed atomically.

In 64-bit mode, the instruction's default operation size is 32 bits.
Using a REX prefix in the form of REX.R permits access to additional
registers (R8-R15). Using a REX prefix in the form of REX.W promotes
operation to 64 bits. See the summary chart at the beginning of this
section for encoding data and limits.

"
	^ self 
		addInstruction: #btc
		operands: { aDestinationRegisterOrMemory . aSourceRegisterOrImmediate }