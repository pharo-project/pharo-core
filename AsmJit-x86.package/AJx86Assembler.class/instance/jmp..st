instructions generated
jmp: aLabelOrRegisterOrMemory
	"Jump
	Description
-----------
Transfers program control to a different point in the instruction stream
without recording return information. The destination (target) operand
specifies the address of the instruction being jumped to. This operand
can be an immediate value, a general-purpose register, or a memory
location.

This instruction can be used to execute four different types of jumps:

-   Near jump—A jump to an instruction within the current code segment
    (the segment currently pointed to by the CS register), sometimes
    referred to as an intrasegment jump.
-   Short jump—A near jump where the jump range is limited to -128 to
    +127 from the current EIP value.
-   Far jump—A jump to an instruction located in a different segment
    than the current code segment but at the same privilege level,
    sometimes referred to as an intersegment jump.
-   Task switch—A jump to an instruction located in a different task.

A task switch can only be executed in protected mode (see Chapter 7, in
theIntel® 64 and IA-32 Architectures Software Developer's Manual, Volume
3A, for information on performing task switches with the JMP
instruction).

Near and Short Jumps. When executing a near jump, the processor jumps to
the address (within the current code segment) that is specified with the
target operand. The target operand specifies either an absolute offset
(that is an offset from the base of the code segment) or a relative
offset (a signed displacement relative to the current value of the
instruction pointer in the EIP register). A near jump to a relative
offset of 8-bits (rel8) is referred to as a short jump. The CS register
is not changed on near and short jumps.

An absolute offset is specified indirectly in a general-purpose register
or a memory location (r/m16 or r/m32). The operand-size attribute
determines the size of the target operand (16 or 32 bits). Absolute
offsets are loaded directly into the EIP register. If the operand-size
attribute is 16, the upper two bytes of the EIP register are cleared,
resulting in a maximum instruction pointer size of 16 bits.

A relative offset (rel8, rel16, or rel32) is generally specified as a
label in assembly code, but at the machine code level, it is encoded as
a signed 8-, 16-, or 32-bit immediate value. This value is added to the
value in the EIP register. (Here, the EIP register contains the address
of the instruction following the JMP instruction). When using relative
offsets, the opcode (for short vs. near jumps) and the operand-size
attribute (for near relative jumps) determines the size of the target
operand (8, 16, or 32 bits).

Far Jumps in Real-Address or Virtual-8086 Mode. When executing a far
jump in real-address or virtual-8086 mode, the processor jumps to the
code segment and offset specified with the target operand. Here the
target operand specifies an absolute far address either directly with a
pointer (ptr16:16 or ptr16:32) or indirectly with a memory location
(m16:16 or m16:32). With the pointer method, the segment and address of
the called procedure is encoded in the instruction, using a 4-byte
(16-bit operand size) or 6-byte (32-bit operand size) far address
immediate. With the indirect method, the target operand specifies a
memory location that contains a 4-byte (16-bit operand size) or 6-byte
(32-bit operand size) far address. The far address is loaded directly
into the CS and EIP registers. If the operand-size attribute is 16, the
upper two bytes of the EIP register are cleared.

Far Jumps in Protected Mode. When the processor is operating in
protected mode, the JMP instruction can be used to perform the following
three types of far jumps:

-   A far jump to a conforming or non-conforming code segment.
-   A far jump through a call gate.
-   A task switch.

(The JMP instruction cannot be used to perform inter-privilege-level far
jumps.)

In protected mode, the processor always uses the segment selector part
of the far address to access the corresponding descriptor in the GDT or
LDT. The descriptor type (code segment, call gate, task gate, or TSS)
and access rights determine the type of jump to be performed.

If the selected descriptor is for a code segment, a far jump to a code
segment at the same privilege level is performed. (If the selected code
segment is at a different privilege level and the code segment is
non-conforming, a general-protection exception is generated.) A far jump
to the same privilege level in protected mode is very similar to one
carried out in real-address or virtual-8086 mode. The target operand
specifies an absolute far address either directly with a pointer
(ptr16:16 or ptr16:32) or indirectly with a memory location (m16:16 or
m16:32). The operand-size attribute determines the size of the offset
(16 or 32 bits) in the far address. The new code segment selector and
its descriptor are loaded into CS register, and the offset from the
instruction is loaded into the EIP register. Note that a call gate
(described in the next paragraph) can also be used to perform far call
to a code segment at the same privilege level. Using this mechanism
provides an extra level of indirection and is the preferred method of
making jumps between 16-bit and 32-bit code segments.

When executing a far jump through a call gate, the segment selector
specified by the target operand identifies the call gate. (The offset
part of the target operand is ignored.) The processor then jumps to the
code segment specified in the call gate descriptor and begins executing
the instruction at the offset specified in the call gate. No stack
switch occurs. Here again, the target operand can specify the far
address of the call gate either directly with a pointer (ptr16:16 or
ptr16:32) or indirectly with a memory location (m16:16 or m16:32).

Executing a task switch with the JMP instruction is somewhat similar to
executing a jump through a call gate. Here the target operand specifies
the segment selector of the task gate for the task being switched to
(and the offset part of the target operand is ignored). The task gate in
turn points to the TSS for the task, which contains the segment
selectors for the task's code and stack segments. The TSS also contains
the EIP value for the next instruction that was to be executed before
the task was suspended. This instruction pointer value is loaded into
the EIP register so that the task begins executing again at this next
instruction.

The JMP instruction can also specify the segment selector of the TSS
directly, which eliminates the indirection of the task gate. See Chapter
7 inIntel® 64 and IA-32Architectures Software Developer's Manual, Volume
3A, for detailed information on the mechanics of a task switch.

Note that when you execute at task switch with a JMP instruction, the
nested task flag (NT) is not set in the EFLAGS register and the new
TSS's previous task link field is not loaded with the old task's TSS
selector. A return to the previous task can thus not be carried out by
executing the IRET instruction. Switching tasks with the JMP instruction
differs in this regard from the CALL instruction which does set the NT
flag and save the previous task link information, allowing a return to
the calling task with an IRET instruction.

In 64-Bit Mode — The instruction's operation size is fixed at 64 bits.
If a selector points to a gate, then RIP equals the 64-bit displacement
taken from gate; else RIP equals the zero-extended offset from the far
pointer referenced in the instruction.

See the summary chart at the beginning of this section for encoding data
and limits.

"
	^ self 
		addInstruction: #jmp
		operands: { aLabelOrRegisterOrMemory }