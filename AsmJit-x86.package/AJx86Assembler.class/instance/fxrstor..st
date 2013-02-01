instructions generated
fxrstor: aMemoryOperand
	"Restore x87 FPU, MMX, XMM, and MXCSR State
	Pseudo Code
-----------
(x87 FPU, MMX, XMM7-XMM0, MXCSR) = Load(SRC);

Description
-----------
Reloads the x87 FPU, MMX technology, XMM, and MXCSR registers from the
512-byte memory image specified in the source operand. This data should
have been written to memory previously using the FXSAVE instruction, and
in the same format as required by the operating modes. The first byte of
the data should be located on a 16-byte boundary. There are three
distinct layouts of the FXSAVE state map: one for legacy and
compatibility mode, a second format for 64-bit mode FXSAVE/FXRSTOR with
REX.W=0, and the third format is for 64-bit mode with
FXSAVE64/FXRSTOR64. Table 3-48 ('Non-64-bit-Mode Layout of FXSAVE and
FXRSTOR Memory Region') shows the layout of the legacy/compatibility
mode state information inmemory and describes the fields in the memory
image for the FXRSTOR and FXSAVE instructions.Table 3-51 shows the
layout of the 64-bit mode state information whenREX.W is set
(FXSAVE64/FXRSTOR64). Table 3-52 shows the layout of the 64-bitmode
state information when REX.W is clear (FXSAVE/FXRSTOR).

The state image referenced with an FXRSTOR instruction must have been
saved using an FXSAVE instruction or be in the same format as required
by Table 3-48, Table 3-51, or Table 3-52. Referencing a state image
saved with an FSAVE, FNSAVEinstruction or incompatible field layout will
result in an incorrect state restoration.

The FXRSTOR instruction does not flush pending x87 FPU exceptions. To
check and raise exceptions when loading x87 FPU state information with
the FXRSTOR instruction, use an FWAIT instruction after the FXRSTOR
instruction.

If the OSFXSR bit in control register CR4 is not set, the FXRSTOR
instruction may not restore the states of the XMM and MXCSR registers.
This behavior is implementation dependent.

If the MXCSR state contains an unmasked exception with a corresponding
status flag also set, loading the register with the FXRSTOR instruction
will not result in a SIMD floating-point error condition being
generated. Only the next occurrence of this unmasked exception will
result in the exception being generated.

Bits 16 through 32 of the MXCSR register are defined as reserved and
should be set to 0. Attempting to write a 1 in any of these bits from
the saved state image will result in a general protection exception
(\#GP) being generated.

Bytes 464:511 of an FXSAVE image are available for software use. FXRSTOR
ignores the content of bytes 464:511 in an FXSAVE state image.

"
	^ self 
		addInstruction: #fxrstor
		operands: { aMemoryOperand }