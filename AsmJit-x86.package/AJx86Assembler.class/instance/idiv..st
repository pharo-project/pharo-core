instructions generated
idiv: aDestination
	"Signed Divide
	Description
-----------
Divides the (signed) value in the AX, DX:AX, or EDX:EAX (dividend) by
the source operand (divisor) and stores the result in the AX (AH:AL),
DX:AX, or EDX:EAX registers. The source operand can be a general-purpose
register or a memory location. The action of this instruction depends on
the operand size (dividend/divisor).

Non-integral results are truncated (chopped) towards 0. The remainder is
always less than the divisor in magnitude. Overflow is indicated with
the \#DE (divide error) exception rather than with the CF flag.

In 64-bit mode, the instruction's default operation size is 32 bits. Use
of the REX.R prefix permits access to additional registers (R8-R15). Use
of the REX.W prefix promotes operation to 64 bits. In 64-bit mode when
REX.W is applied, the instruction divides the signed value in RDX:RAX by
the source operand. RAX contains a 64-bit quotient; RDX contains a
64-bit remainder.

See the summary chart at the beginning of this section for encoding data
and limits. See the following.

  Operand Size              Dividend   Divisor   Quotient   Remainder   Quotient Range
  ------------------------- ---------- --------- ---------- ----------- ---------------------
  Word/byte                 AX         r/m8      AL         AH          -128 to +127
  Doubleword/word           DX:AX      r/m16     AX         DX          -32,768 to +32,767
  Quadword/doubleword       EDX:EAX    r/m32     EAX        EDX         -2^31^ to 2^32^ - 1
  Doublequadword/quadword   RDX:RAX    r/m64     RAX        RDX         -2^63^ to 2^64^ - 1

  : IDIV Results

"
	^ self 
		addInstruction: #idiv
		operands: { aDestination }