fxch: aX87Register
	"Exchange Register Contents
	Description
-----------
Exchanges the contents of registers ST(0) and ST(i). If no source
operand is specified, the contents of ST(0) and ST(1) are exchanged.

This instruction provides a simple means of moving values in the FPU
register stack to the top of the stack [ST(0)], so that they can be
operated on by those floating-point instructions that can only operate
on values in ST(0). For example, the following instruction sequence
takes the square root of the third register from the top of the register
stack:

    FXCH ST(3);
    FSQRT;
    FXCH ST(3);

This instruction's operation is the same in non-64-bit modes and 64-bit
mode.

"
	^ self 
		addInstruction: #fxch
		operands: { aX87Register }