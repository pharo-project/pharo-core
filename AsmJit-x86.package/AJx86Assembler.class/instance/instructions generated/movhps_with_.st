movhps: aRegisterOrMemory1 with: aRegisterOrMemory2
	"Move High Packed Single-FP Values
	Pseudo Code
-----------
(* MOVHPS instruction for memory to XMM move *)
DEST[127:64] = SRC;
(* DEST[63:0] unchanged *)
(* MOVHPS instruction for XMM to memory move *)
DEST = SRC[127:64];

Description
-----------
Moves two packed single-precision floating-point values from the source
operand (second operand) to the destination operand (first operand). The
source and destination operands can be an XMM register or a 64-bit
memory location. This instruction allows two single-precision
floating-point values to be moved to and from the high quadword of an
XMM register and memory. It cannot be used for register to register or
memory to memory moves. When the destination operand is an XMM register,
the low quadword of the register remains unchanged.

In 64-bit mode, use of the REX.R prefix permits this instruction to
access additional registers (XMM8-XMM15).

"
	^ self 
		addInstruction: #movhps
		operands: { aRegisterOrMemory1 . aRegisterOrMemory2 }