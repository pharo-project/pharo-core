pop: aRegisterOrMemoryDestination
	"Pop a Value from the Stack
	Description
-----------
Loads the value from the top of the stack to the location specified with
the destination operand (or explicit opcode) and then increments the
stack pointer. The destination operand can be a general-purpose
register, memory location, or segment register.

The address-size attribute of the stack segment determines the stack
pointer size (16, 32, 64 bits) and the operand-size attribute of the
current code segment determines the amount the stack pointer is
incremented (2, 4, 8 bytes).

For example, if the address- and operand-size attributes are 32, the
32-bit ESP register (stack pointer) is incremented by 4; if they are 16,
the 16-bit SP register is incremented by 2. (The B flag in the stack
segment's segment descriptor determines the stack's address-size
attribute, and the D flag in the current code segment's segment
descriptor, along with prefixes, determines the operand-size attribute
and also the address-size attribute of the destination operand.)

If the destination operand is one of the segment registers DS, ES, FS,
GS, or SS, the value loaded into the register must be a valid segment
selector. In protected mode, popping a segment selector into a segment
register automatically causes the descriptor information associated with
that segment selector to be loaded into the hidden (shadow) part of the
segment register and causes the selector and the descriptor information
to be validated (see the 'Operation' section below).

A NULL value (0000-0003) may be popped into the DS, ES, FS, or GS
register without causing a general protection fault. However, any
subsequent attempt to reference a segment whose corresponding segment
register is loaded with a NULL value causes a general protection
exception (\#GP). In this situation, no memory reference occurs and the
saved value of the segment register is NULL.

The POP instruction cannot pop a value into the CS register. To load the
CS register from the stack, use the RET instruction.

If the ESP register is used as a base register for addressing a
destination operand in memory, the POP instruction computes the
effective address of the operand after it increments the ESP register.
For the case of a 16-bit stack where ESP wraps to 0H as a result of the
POP instruction, the resulting location of the memory write is
processor-family-specific.

The POP ESP instruction increments the stack pointer (ESP) before data
at the old top of stack is written into the destination.

A POP SS instruction inhibits all interrupts, including the NMI
interrupt, until after execution of the next instruction. This action
allows sequential execution of POP SS and MOV ESP, EBP instructions
without the danger of having an invalid stack during an interrupt1.
However, use of the LSS instruction is the preferred method of loading
the SS and ESP registers.

In 64-bit mode, using a REX prefix in the form of REX.R permits access
to additional registers (R8-R15). When in 64-bit mode, POPs using 32-bit
operands are not encodable and POPs to DS, ES, SS are not valid. See the
summary chart at the beginning of this section for encoding data and
limits.

"
	^ self 
		addInstruction: #pop
		operands: { aRegisterOrMemoryDestination }