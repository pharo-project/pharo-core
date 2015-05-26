cmpxchg: aDestinationRegisterOrMemory with: aSourceRegister
	"Compare and Exchange
	Pseudo Code
-----------
(* Accumulator = AL, AX, EAX, or RAX depending on whether a byte, word, doubleword, or quadword comparison is being performed *)
IF accumulator = DEST
    ZF = 1;
    DEST = SRC;
ELSE
    ZF = 0;
    accumulator = DEST;
FI;

Description
-----------
Compares the value in the AL, AX, EAX, or RAX register with the first
operand (destination operand). If the two values are equal, the second
operand (source operand) is loaded into the destination operand.
Otherwise, the destination operand is loaded into the AL, AX, EAX or RAX
register. RAX register is available only in 64-bit mode.

This instruction can be used with a LOCK prefix to allow the instruction
to be executed atomically. To simplify the interface to the processor's
bus, the destination operand receives a write cycle without regard to
the result of the comparison. The destination operand is written back if
the comparison fails; otherwise, the source operand is written into the
destination. (The processor never produces a locked read without also
producing a locked write.)

In 64-bit mode, the instruction's default operation size is 32 bits. Use
of the REX.R prefix permits access to additional registers (R8-R15). Use
of the REX.W prefix promotes operation to 64 bits. See the summary chart
at the beginning of this section for encoding data and limits.

"
	^ self 
		addInstruction: #cmpxchg
		operands: { aDestinationRegisterOrMemory . aSourceRegister }