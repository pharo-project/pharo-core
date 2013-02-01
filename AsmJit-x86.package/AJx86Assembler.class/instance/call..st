instructions generated
call: anAddressSource
	"Call Procedure
	Description
-----------
Saves procedure linking information on the stack and branches to the
called procedure specified using the target operand. The target operand
specifies the address of the first instruction in the called procedure.
The operand can be an immediate value, a general-purpose register, or a
memory location.

This instruction can be used to execute four types of calls:

-   Near Call — A call to a procedure in the current code segment (the
    segment currently pointed to by the CS register), sometimes referred
    to as an intrasegment call.
-   Far Call — A call to a procedure located in a different segment than
    the current code segment, sometimes referred to as an inter-segment
    call.
-   Inter-privilege-level far call — A far call to a procedure in a
    segment at a different privilege level than that of the currently
    executing program or procedure.
-   Task switch — A call to a procedure located in a different task.

The latter two call types (inter-privilege-level call and task switch)
can only be executed in protected mode. See 'Calling Procedures Using
Call and RET' in Chapter6 of the Intel®64 and IA-32 Architectures
Software Developer's Manual, Volume 1, for additional information on
near, far, and inter-privilege-level calls. See Chapter 7,'Task
Management,' in theIntel® 64 and IA-32 Architectures Software
Developer'sManual, Volume 3A, for information on performing task
switches with the CALL instruction.

Near Call. When executing a near call, the processor pushes the value of
the EIP register (which contains the offset of the instruction following
the CALL instruction) on the stack (for use later as a
return-instruction pointer). The processor then branches to the address
in the current code segment specified by the target operand. The target
operand specifies either an absolute offset in the code segment (an
offset from the base of the code segment) or a relative offset (a signed
displacement relative to the current value of the instruction pointer in
the EIP register; this value points to the instruction following the
CALL instruction). The CS register is not changed on near calls.

For a near call absolute, an absolute offset is specified indirectly in
a general-purpose register or a memory location (r/m16, r/m32, or
r/m64). The operand-size attribute determines the size of the target
operand (16, 32 or 64 bits). When in 64-bit mode, the operand size for
near call (and all near branches) is forced to 64-bits. Absolute offsets
are loaded directly into the EIP(RIP) register. If the operand size
attribute is 16, the upper two bytes of the EIP register are cleared,
resulting in a maximum instruction pointer size of 16 bits. When
accessing an absolute offset indirectly using the stack pointer [ESP] as
the base register, the base value used is the value of the ESP before
the instruction executes.

A relative offset (rel16 or rel32) is generally specified as a label in
assembly code. But at the machine code level, it is encoded as a signed,
16- or 32-bit immediate value. This value is added to the value in the
EIP(RIP) register. In 64-bit mode the relative offset is always a 32-bit
immediate value which is sign extended to 64-bits before it is added to
the value in the RIP register for the target calculation. As with
absolute offsets, the operand-size attribute determines the size of the
target operand (16, 32, or 64 bits). In 64-bit mode the target operand
will always be 64-bits because the operand size is forced to 64-bits for
near branches.

Far Calls in Real-Address or Virtual-8086 Mode. When executing a far
call in real- address or virtual-8086 mode, the processor pushes the
current value of both the CS and EIP registers on the stack for use as a
return-instruction pointer. The processor then performs a 'far branch'
to the code segment and offset specified with the target operand for the
called procedure. The target operand specifies an absolute far address
either directly with a pointer (ptr16:16 or ptr16:32) or indirectly with
a memory location (m16:16 or m16:32). With the pointer method, the
segment and offset of the called procedure is encoded in the instruction
using a 4-byte (16-bit operand size) or 6-byte (32-bit operand size) far
address immediate. With the indirect method, the target operand
specifies a memory location that contains a 4-byte (16-bit operand size)
or 6-byte (32-bit operand size) far address. The operand-size attribute
determines the size of the offset (16 or 32 bits) in the far address.
The far address is loaded directly into the CS and EIP registers. If the
operand-size attribute is 16, the upper two bytes of the EIP register
are cleared.

Far Calls in Protected Mode. When the processor is operating in
protected mode, the CALL instruction can be used to perform the
following types of far calls:

-   Far call to the same privilege level
-   Far call to a different privilege level (inter-privilege level call)
-   Task switch (far call to another task)

In protected mode, the processor always uses the segment selector part
of the far address to access the corresponding descriptor in the GDT or
LDT. The descriptor type (code segment, call gate, task gate, or TSS)
and access rights determine the type of call operation to be performed.

If the selected descriptor is for a code segment, a far call to a code
segment at the same privilege level is performed. (If the selected code
segment is at a different privilege level and the code segment is
non-conforming, a general-protection exception is generated.) A far call
to the same privilege level in protected mode is very similar to one
carried out in real-address or virtual-8086 mode. The target operand
specifies an absolute far address either directly with a pointer
(ptr16:16 or ptr16:32) or indirectly with a memory location (m16:16 or
m16:32). The operand- size attribute determines the size of the offset
(16 or 32 bits) in the far address. The new code segment selector and
its descriptor are loaded into CS register; the offset from the
instruction is loaded into the EIP register.

A call gate (described in the next paragraph) can also be used to
perform a far call to a code segment at the same privilege level. Using
this mechanism provides an extra level of indirection and is the
preferred method of making calls between 16-bit and 32-bit code
segments.

When executing an inter-privilege-level far call, the code segment for
the procedure being called must be accessed through a call gate. The
segment selector specified by the target operand identifies the call
gate. The target operand can specify the call gate segment selector
either directly with a pointer (ptr16:16 or ptr16:32) or indirectly with
a memory location (m16:16 or m16:32). The processor obtains the segment
selector for the new code segment and the new instruction pointer
(offset) from the call gate descriptor. (The offset from the target
operand is ignored when a call gate is used.)

On inter-privilege-level calls, the processor switches to the stack for
the privilege level of the called procedure. The segment selector for
the new stack segment is specified in the TSS for the currently running
task. The branch to the new code segment occurs after the stack switch.
(Note that when using a call gate to perform a far call to a segment at
the same privilege level, no stack switch occurs.) On the new stack, the
processor pushes the segment selector and stack pointer for the calling
procedure's stack, an optional set of parameters from the calling
procedures stack, and the segment selector and instruction pointer for
the calling procedure's code segment. (A value in the call gate
descriptor determines how many parameters to copy to the new stack.)
Finally, the processor branches to the address of the procedure being
called within the new code segment.

Executing a task switch with the CALL instruction is similar to
executing a call through a call gate. The target operand specifies the
segment selector of the task gate for the new task activated by the
switch (the offset in the target operand is ignored). The task gate in
turn points to the TSS for the new task, which contains the segment
selectors for the task's code and stack segments. Note that the TSS also
contains the EIP value for the next instruction that was to be executed
before the calling task was suspended. This instruction pointer value is
loaded into the EIP register to re-start the calling task.

The CALL instruction can also specify the segment selector of the TSS
directly, which eliminates the indirection of the task gate. See Chapter
7, 'Task Management,' in the

Intel® 64 and IA-32 Architectures Software Developer's Manual, Volume
3A, for information on the mechanics of a task switch.

When you execute at task switch with a CALL instruction, the nested task
flag (NT) is set in the EFLAGS register and the new TSS's previous task
link field is loaded with the old task's TSS selector. Code is expected
to suspend this nested task by executing an IRET instruction which,
because the NT flag is set, automatically uses the previous task link to
return to the calling task. (See 'Task Linking' in Chapter 7 ofthe
Intel® 64 and IA-32 Architectures Software Developer's Manual, Volume
3A, for information on nested tasks.) Switching tasks with the CALL
instruction differs in this regard from JMP instruction. JMP does not
set the NT flag and therefore does not expect an IRET instruction to
suspend the task.

Mixing 16-Bit and 32-Bit Calls. When making far calls between 16-bit and
32-bit code segments, use a call gate. If the far call is from a 32-bit
code segment to a 16-bit code segment, the call should be made from the
first 64 KBytes of the 32-bit code segment. This is because the
operand-size attribute of the instruction is set to 16, so only a 16-bit
return address offset can be saved. Also, the call should be made using
a 16-bit call gate so that 16-bit values can be pushed on the stack. See
Chapter 18,'Mixing 16-Bit and 32-Bit Code,' in theIntel® 64 and IA-32
Architectures SoftwareDeveloper's Manual, Volume 3A, for more
information.

Far Calls in Compatibility Mode. When the processor is operating in
compatibility mode, the CALL instruction can be used to perform the
following types of far calls:

-   Far call to the same privilege level, remaining in compatibility
    mode
-   Far call to the same privilege level, transitioning to 64-bit mode
-   Far call to a different privilege level (inter-privilege level
    call), transitioning to 64bit mode

Note that a CALL instruction can not be used to cause a task switch in
compatibility mode since task switches are not supported in IA-32e mode.

In compatibility mode, the processor always uses the segment selector
part of the far address to access the corresponding descriptor in the
GDT or LDT. The descriptor type (code segment, call gate) and access
rights determine the type of call operation to be performed.

If the selected descriptor is for a code segment, a far call to a code
segment at the same privilege level is performed. (If the selected code
segment is at a different privilege level and the code segment is
non-conforming, a general-protection exception is generated.) A far call
to the same privilege level in compatibility mode is very similar to one
carried out in protected mode. The target operand specifies an absolute
far address either directly with a pointer (ptr16:16 or ptr16:32) or
indirectly with a memory location (m16:16 or m16:32). The operand-size
attribute determines the size of the offset (16 or 32 bits) in the far
address. The new code segment selector and its descriptor are loaded
into CS register and the offset from the instruction is loaded into the
EIP register. The difference is that 64-bit mode may be entered. This
specified by the L bit in the new code segment descriptor.

Note that a 64-bit call gate (described in the next paragraph) can also
be used to perform a far call to a code segment at the same privilege
level. However, using this mechanism requires that the target code
segment descriptor have the L bit set, causing an entry to 64-bit mode.

When executing an inter-privilege-level far call, the code segment for
the procedure being called must be accessed through a 64-bit call gate.
The segment selector specified by the target operand identifies the call
gate. The target operand can specify the call gate segment selector
either directly with a pointer (ptr16:16 or ptr16:32) or indirectly with
a memory location (m16:16 or m16:32). The processor obtains the segment
selector for the new code segment and the new instruction pointer
(offset) from the 16-byte call gate descriptor. (The offset from the
target operand is ignored when a call gate is used.)

On inter-privilege-level calls, the processor switches to the stack for
the privilege level of the called procedure. The segment selector for
the new stack segment is set to NULL. The new stack pointer is specified
in the TSS for the currently running task. The branch to the new code
segment occurs after the stack switch. (Note that when using a call gate
to perform a far call to a segment at the same privilege level, an
implicit stack switch occurs as a result of entering 64-bit mode. The SS
selector is unchanged, but stack segment accesses use a segment base of
0x0, the limit is ignored, and the default stack size is 64-bits. The
full value of RSP is used for the offset, of which the upper 32-bits are
undefined.) On the new stack, the processor pushes the segment selector
and stack pointer for the calling procedure's stack and the segment
selector and instruction pointer for the calling procedure's code
segment. (Parameter copy is not supported in IA-32e mode.) Finally, the
processor branches to the address of the procedure being called within
the new code segment.

Near/(Far) Calls in 64-bit Mode. When the processor is operating in
64-bit mode, the CALL instruction can be used to perform the following
types of far calls:

-   Far call to the same privilege level, transitioning to compatibility
    mode
-   Far call to the same privilege level, remaining in 64-bit mode
-   Far call to a different privilege level (inter-privilege level
    call), remaining in 64-bit mode

Note that in this mode the CALL instruction can not be used to cause a
task switch in 64-bit mode since task switches are not supported in
IA-32e mode.

In 64-bit mode, the processor always uses the segment selector part of
the far address to access the corresponding descriptor in the GDT or
LDT. The descriptor type (code segment, call gate) and access rights
determine the type of call operation to be performed.

If the selected descriptor is for a code segment, a far call to a code
segment at the same privilege level is performed. (If the selected code
segment is at a different privilege level and the code segment is
non-conforming, a general-protection exception is generated.) A far call
to the same privilege level in 64-bit mode is very similar to one
carried out in compatibility mode. The target operand specifies an
absolute far address indirectly with a memory location (m16:16, m16:32
or m16:64). The form of CALL with a direct specification of absolute far
address is not defined in 64-bit mode. The operand-size attribute
determines the size of the offset (16, 32, or 64 bits) in the far
address. The new code segment selector and its descriptor are loaded
into the CS register; the offset from the instruction is loaded into the
EIP register. The new code segment may specify entry either into
compatibility or 64-bit mode, based on the L bit value.

A 64-bit call gate (described in the next paragraph) can also be used to
perform a far call to a code segment at the same privilege level.
However, using this mechanism requires that the target code segment
descriptor have the L bit set.

When executing an inter-privilege-level far call, the code segment for
the procedure being called must be accessed through a 64-bit call gate.
The segment selector specified by the target operand identifies the call
gate. The target operand can only specify the call gate segment selector
indirectly with a memory location (m16:16, m16:32 or m16:64). The
processor obtains the segment selector for the new code segment and the
new instruction pointer (offset) from the 16-byte call gate descriptor.
(The offset from the target operand is ignored when a call gate is
used.)

On inter-privilege-level calls, the processor switches to the stack for
the privilege level of the called procedure. The segment selector for
the new stack segment is set to NULL. The new stack pointer is specified
in the TSS for the currently running task. The branch to the new code
segment occurs after the stack switch.

Note that when using a call gate to perform a far call to a segment at
the same privilege level, an implicit stack switch occurs as a result of
entering 64-bit mode. The SS selector is unchanged, but stack segment
accesses use a segment base of 0x0, the limit is ignored, and the
default stack size is 64-bits. (The full value of RSP is used for the
offset.) On the new stack, the processor pushes the segment selector and
stack pointer for the calling procedure's stack and the segment selector
and instruction pointer for the calling procedure's code segment.
(Parameter copy is not supported in IA-32e mode.) Finally, the processor
branches to the address of the procedure being called within the new
code segment.

"
	^ self 
		addInstruction: #call
		operands: { anAddressSource }