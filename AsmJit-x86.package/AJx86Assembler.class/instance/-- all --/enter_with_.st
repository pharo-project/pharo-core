enter: stackFrameSize with: lexicalNesting
	"Make Stack Frame for Procedure Parameters
	Description
-----------
Creates a stack frame for a procedure. The first operand (size operand)
specifies the size of the stack frame (that is, the number of bytes of
dynamic storage allocated on the stack for the procedure). The second
operand (nesting level operand) gives the lexical nesting level (0 to
31) of the procedure. The nesting level determines the number of stack
frame pointers that are copied into the 'display area' of the new stack
frame from the preceding frame. Both of these operands are immediate
values.

The stack-size attribute determines whether the BP (16 bits), EBP (32
bits), or RBP (64 bits) register specifies the current frame pointer and
whether SP (16 bits), ESP (32 bits), or RSP (64 bits) specifies the
stack pointer. In 64-bit mode, stack-size attribute is always 64-bits.

The ENTER and companion LEAVE instructions are provided to support block
structured languages. The ENTER instruction (when used) is typically the
first instruction in a procedure and is used to set up a new stack frame
for a procedure. The LEAVE instruction is then used at the end of the
procedure (just before the RET instruction) to release the stack frame.

If the nesting level is 0, the processor pushes the frame pointer from
the BP/EBP/RBP register onto the stack, copies the current stack pointer
from the SP/ESP/RSP register into the BP/EBP/RBP register, and loads the
SP/ESP/RSP register with the current stack-pointer value minus the value
in the size operand. For nesting levels of 1 or greater, the processor
pushes additional frame pointers on the stack before adjusting the stack
pointer. These additional frame pointers provide the called procedure
with access points to other nested frames on the stack. See 'Procedure
Calls for Block-Structured Languages' in Chapter 6 of theIntel®64 and
IA-32 ArchitecturesSoftware Developer's Manual, Volume 1, for more
information about the actions of the ENTER instruction.

The ENTER instruction causes a page fault whenever a write using the
final value of the stack pointer (within the current stack segment)
would do so.

In 64-bit mode, default operation size is 64 bits; 32-bit operation size
cannot be encoded.

"
	^ self 
		addInstruction: #enter
		operands: { stackFrameSize . lexicalNesting }