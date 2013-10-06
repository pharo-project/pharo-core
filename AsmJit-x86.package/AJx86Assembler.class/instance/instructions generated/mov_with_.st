mov: aDestinationRegisterOrMemory with: aSource
	"Move
	Description
-----------
Copies the second operand (source operand) to the first operand
(destination operand). The source operand can be an immediate value,
general-purpose register, segment register, or memory location; the
destination register can be a general-purpose register, segment
register, or memory location. Both operands must be the same size, which
can be a byte, a word, a doubleword, or a quadword.

The MOV instruction cannot be used to load the CS register. Attempting
to do so results in an invalid opcode exception (\#UD). To load the CS
register, use the far JMP, CALL, or RET instruction.

If the destination operand is a segment register (DS, ES, FS, GS, or
SS), the source operand must be a valid segment selector. In protected
mode, moving a segment selector into a segment register automatically
causes the segment descriptor information associated with that segment
selector to be loaded into the hidden (shadow) part of the segment
register. While loading this information, the segment selector and
segment descriptor information is validated (see the 'Operation'
algorithm below). The segment descriptor data is obtained from the GDT
or LDT entry for the specified segment selector.

A NULL segment selector (values 0000-0003) can be loaded into the DS,
ES, FS, and GS registers without causing a protection exception.
However, any subsequent attempt to reference a segment whose
corresponding segment register is loaded with a NULL value causes a
general protection exception (\#GP) and no memory reference occurs.

Loading the SS register with a MOV instruction inhibits all interrupts
until after the execution of the next instruction. This operation allows
a stack pointer to be loaded into the ESP register with the next
instruction (MOV ESP, stack-pointer value) before an interrupt occurs1.
Be aware that the LSS instruction offers a more efficient method of
loading the SS and ESP registers.

When operating in 32-bit mode and moving data between a segment register
and a general-purpose register, the 32-bit IA-32 processors do not
require the use of the 16-bit operand-size prefix (a byte with the value
66H) with this instruction, but most assemblers will insert it if the
standard form of the instruction is used (for example, MOV DS, AX). The
processor will execute this instruction correctly, but it will usually
require an extra clock. With most assemblers, using the instruction form
MOV DS, EAX will avoid this unneeded 66H prefix. When the processor
executes the instruction with a 32-bit general-purpose register, it
assumes that the 16 least-significant bits of the general-purpose
register are the destination or source operand. If the register is a
destination operand, the resulting value in the two high-order bytes of
the register is implementation dependent. For the Pentium 4, Intel Xeon,
and P6 family processors, the two high-order bytes are filled with
zeros; for earlier 32-bit IA-32 processors, the two high order bytes are
undefined.

In 64-bit mode, the instruction's default operation size is 32 bits. Use
of the REX.R prefix permits access to additional registers (R8-R15). Use
of the REX.W prefix promotes operation to 64 bits. See the summary chart
at the beginning of this section for encoding data and limits.

"
	^ self 
		addInstruction: #mov
		operands: { aDestinationRegisterOrMemory . aSource }