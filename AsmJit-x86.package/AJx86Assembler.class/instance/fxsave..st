instructions generated
fxsave: aMemoryOperand
	"Save x87 FPU, MMX, XMM, and MXCSR State
	Description
-----------
Saves the current state of the x87 FPU, MMX technology, XMM, and MXCSR
registers to a 512-byte memory location specified in the destination
operand. The content layout of the 512 byte region depends on whether
the processor is operating in non-64-bit operating modes or 64-bit
sub-mode of IA-32e mode.

Bytes 464:511 are available to software use. The processor does not
write to bytes 464:511 of an FXSAVE area.

The operation of FXSAVE in non-64-bit modes is described first.

### Non-64-Bit Mode Operation

The following table shows the layout of the state information in memory
when the processoris operating in legacy modes.

  ------------- --------- -------- ----- -------- ----- ----- ----- --- --- --- --- --- --- --- --- --
  15            14        13       12    11       10    9     8     7   6   5   4   3   2   1   0   
  Rsrvd         CS        FPU IP   FOP   Rs rvd   FTW   FSW   FCW   0
  MXCSR\_MASK   MXCSR     Rsrvd    DS    FPU DP   16
  Reserved      ST0/MM0   32
  Reserved      ST1/MM1   48
  Reserved      ST2/MM2   64
  Reserved      ST3/MM3   80
  Reserved      ST4/MM4   96
  Reserved      ST5/MM5   112
  Reserved      ST6/MM6   128
  Reserved      ST7/MM7   144
  XMM0          160
  XMM1          176
  XMM2          192
  XMM3          208
  XMM4          224
  XMM5          240
  XMM6          256
  XMM7          272
  Reserved      288
  Reserved      304
  Reserved      320
  Reserved      336
  Reserved      352
  Reserved      368
  Reserved      384
  Reserved      400
  Reserved      416
  Reserved      432
  Reserved      448
  Available     464
  Available     480
  Available     496
  ------------- --------- -------- ----- -------- ----- ----- ----- --- --- --- --- --- --- --- --- --

  : Non-64-bit-Mode Layout of FXSAVE and FXRSTOR Memory Region

The destination operand contains the first byte of the memory image, and
it must be aligned on a 16-byte boundary. A misaligned destination
operand will result in a general-protection (\#GP) exception being
generated (or in some cases, an alignment check exception [\#AC]).

The FXSAVE instruction is used when an operating system needs to perform
a context switch or when an exception handler needs to save and examine
the current state of the x87 FPU, MMX technology, and/or XMM and MXCSR
registers.

The fields used in the previous table are defined in the following
table.

Field Definitions

Field

Definition

FCW

x87 FPU Control Word (16 bits). See Figure 8-6 in the Intel® 64 and
IA-32 Architectures Software Developer's Manual, Volume 1, for the
layout of the x87 FPU control word.

FSW

x87 FPU Status Word (16 bits). See Figure 8-4 in the Intel® 64 and IA-32
Architectures Software Developer's Manual, Volume 1, for the layout of
the x87 FPU status word.

Abridged FTW

x87 FPU Tag Word (8 bits). The tag information saved here is abridged,
as described in the following paragraphs.

FOP

x87 FPU Opcode (16 bits). The lower 11 bits of this field contain the
opcode, upper 5 bits are reserved. See Figure 8-8 in the Intel® 64 and
IA-32 Architectures Software Developer's Manual, Volume 1, for the
layout of the x87 FPU opcode field.

FPU IP

x87 FPU Instruction Pointer Offset (32 bits). The contents of this field
differ depending on the current addressing mode (32-bit or 16-bit) of
the processor when the FXSAVE instruction was executed:

-   32-bit mode — 32-bit IP offset.
-   16-bit mode — low 16 bits are IP offset; high 16 bits are reserved.

See 'x87 FPU Instruction and Operand (Data) Pointers' in Chapter 8 of
the Intel® 64 and IA-32 Architectures Software Developer's Manual,
Volume 1, for a description of the x87 FPU instruction pointer.

CS

x87 FPU Instruction Pointer Selector (16 bits).

FPU DP

x87 FPU Instruction Operand (Data) Pointer Offset (32 bits). The
contents of this field differ depending on the current addressing mode
(32-bit or 16bit) of the processor when the FXSAVE instruction was
executed:

-   32-bit mode — 32-bit DP offset.
-   16-bit mode — low 16 bits are DP offset; high 16 bits are reserved.

See 'x87 FPU Instruction and Operand (Data) Pointers' in Chapter 8 of
the Intel® 64 and IA-32 Architectures Software Developer's Manual,
Volume 1, for a description of the x87 FPU operand pointer.

DS

x87 FPU Instruction Operand (Data) Pointer Selector (16 bits).

MXCSR

MXCSR Register State (32 bits). See Figure 10-3 in the Intel® 64 and
IA-32 Architectures Software Developer's Manual, Volume 1, for the
layout of the MXCSR register. If the OSFXSR bit in control register CR4
is not set, the FXSAVE instruction may not save this register. This
behavior is implementation dependent.

MXCSR\_

MXCSR\_MASK (32 bits). This mask can be used to adjust values written to

MASK

the MXCSR register, ensuring that reserved bits are set to 0. Set the
mask bits and flags in MXCSR to the mode of operation desired for SSE
and SSE2 SIMD floating-point instructions. See 'Guidelines for Writing
to the MXCSR Register' in Chapter 11 of the Intel® 64 and IA-32
Architectures Software Developer's Manual, Volume 1, for instructions
for how to determine and use the MXCSR\_MASK value.

ST0/MM0 through

x87 FPU or MMX technology registers. These 80-bit fields contain the x87

ST7/MM7

FPU data registers or the MMX technology registers, depending on the
state of the processor prior to the execution of the FXSAVE instruction.
If the processor had been executing x87 FPU instruction prior to the
FXSAVE instruction, the x87 FPU data registers are saved; if it had been
executing MMX instructions (or SSE or SSE2 instructions that operated on
the MMX technology registers), the MMX technology registers are saved.
When the MMX technology registers are saved, the high 16 bits of the
field are reserved.

XMM0 through XMM7

XMM registers (128 bits per field). If the OSFXSR bit in control
register CR4 is not set, the FXSAVE instruction may not save these
registers. This behavior is implementation dependent.

The FXSAVE instruction saves an abridged version of the x87 FPU tag word
in the FTW field (unlike the FSAVE instruction, which saves the complete
tag word). The tag information is saved in physical register order (R0
through R7), rather than in top-ofstack (TOS) order. With the FXSAVE
instruction, however, only a single bit (1 for valid or 0 for empty) is
saved for each tag. For example, assume that the tag word is currently
set as follows:

  ---- ---- ---- ---- ---- ---- ---- ----
  R7   R6   R5   R4   R3   R2   R1   R0
  11   xx   xx   xx   11   11   11   11
  ---- ---- ---- ---- ---- ---- ---- ----

Here, 11B indicates empty stack elements and 'xx' indicates valid (00B),
zero (01B), or special (10B).

For this example, the FXSAVE instruction saves only the following 8 bits
of information:

  ---- ---- ---- ---- ---- ---- ---- ----
  R7   R6   R5   R4   R3   R2   R1   R0
  0    1    1    1    0    0    0    0
  ---- ---- ---- ---- ---- ---- ---- ----

Here, a 1 is saved for any valid, zero, or special tag, and a 0 is saved
for any empty tag.

The operation of the FXSAVE instruction differs from that of the FSAVE
instruction, the as follows:

-   FXSAVE instruction does not check for pending unmasked
    floating-point exceptions. (The FXSAVE operation in this regard is
    similar to the operation of the FNSAVE instruction).
-   After the FXSAVE instruction has saved the state of the x87 FPU, MMX
    technology, XMM, and MXCSR registers, the processor retains the
    contents of the registers. Because of this behavior, the FXSAVE
    instruction cannot be used by an application program to pass a
    'clean' x87 FPU state to a procedure, since it retains the current
    state. To clean the x87 FPU state, an application must explicitly
    execute an FINIT instruction after an FXSAVE instruction to
    reinitialize the x87 FPU state.
-   The format of the memory image saved with the FXSAVE instruction is
    the same regardless of the current addressing mode (32-bit or
    16-bit) and operating mode (protected, real address, or system
    management). This behavior differs from the FSAVE instructions,
    where the memory image format is different depending on the
    addressing mode and operating mode. Because of the different image
    formats, the memory image saved with the FXSAVE instruction cannot
    be restored correctly with the FRSTOR instruction, and likewise the
    state saved with the FSAVE instruction cannot be restored correctly
    with the FXRSTOR instruction.

The FSAVE format for FTW can be recreated from the FTW valid bits and
the stored 80-bit FP data (assuming the stored data was not the contents
of MMX technology registers) using Table 3-50.

  Exponent all 1's                    Exponent all 0's   Fraction all 0's   J and M bits   FTW valid bit   x87 FTW
  ----------------------------------- ------------------ ------------------ -------------- --------------- --------- ----
  0                                   0                  0                  0x             1               Special   10
  0                                   0                  0                  1x             1               Valid     00
  0                                   0                  1                  00             1               Special   10
  0                                   0                  1                  10             1               Valid     00
  0                                   1                  0                  0x             1               Special   10
  0                                   1                  0                  1x             1               Special   10
  0                                   1                  1                  00             1               Zero      01
  0                                   1                  1                  10             1               Special   10
  1                                   0                  0                  1x             1               Special   10
  1                                   0                  0                  1x             1               Special   10
  1                                   0                  1                  00             1               Special   10
  1                                   0                  1                  10             1               Special   10
  For all legal combinations above.   0                  Empty              11

  : Recreating FSAVE Format

The J-bit is defined to be the 1-bit binary integer to the left of the
decimal place in the significand. The M-bit is defined to be the most
significant bit of the fractional portion of the significand (i.e., the
bit immediately to the right of the decimal place).

When the M-bit is the most significant bit of the fractional portion of
the significand, it must be 0 if the fraction is all 0's.

### IA-32e Mode Operation

In compatibility sub-mode of IA-32e mode, legacy SSE registers, XMM0
through XMM7, are saved according to the legacy FXSAVE map. In 64-bit
mode, all of the SSE registers, XMM0 through XMM15, are saved.
Additionally, there are two different layouts of the FXSAVE map in
64-bit mode, corresponding to FXSAVE64 (which requires REX.W=1) and
FXSAVE (REX.W=0). In the FXSAVE64 map (following table), theFPU IP and
FPU DP pointers are 64-bit wide. In the FXSAVE map for 64-bit mode (see
the following tables), the FPU IP and FPU DP pointers are 32-bits.

  ------------- --------- ---------- ----- ----- ----- --- --- --- --- --- --- --- --- --- --- --
  15            14        13         12    11    10    9   8   7   6   5   4   3   2   1   0   
  FPU IP        FOP       Reserved   FTW   FSW   FCW   0
  MXCSR\_MASK   MXCSR     FPU DP     16
  Reserved      ST0/MM0   32
  Reserved      ST1/MM1   48
  Reserved      ST2/MM2   64
  Reserved      ST3/MM3   80
  Reserved      ST4/MM4   96
  Reserved      ST5/MM5   112
  Reserved      ST6/MM6   128
  Reserved      ST7/MM7   144
  XMM0          160
  XMM1          176
  XMM2          192
  XMM3          208
  XMM4          224
  XMM5          240
  XMM6          256
  XMM7          272
  XMM8          288
  XMM9          304
  XMM10         320
  XMM11         336
  XMM12         352
  XMM13         368
  XMM14         384
  XMM15         400
  Reserved      416
  Reserved      432
  Reserved      448
  Available     464
  Available     480
  Available     496
  ------------- --------- ---------- ----- ----- ----- --- --- --- --- --- --- --- --- --- --- --

  : Layout of the 64-bit-mode FXSAVE64 Map (requires REX.W = 1)

  ------------- --------- ---------- -------- ---------- ----- ----- ----- --- --- --- --- --- --- --- --- --
  15            14        13         12       11         10    9     8     7   6   5   4   3   2   1   0   
  Reserved      CS        FPU IP     FOP      Reserved   FTW   FSW   FCW   0
  MXCSR\_MASK   MXCSR     Reserved   FPU DP   16
  Reserved      ST0/MM0   32
  Reserved      ST1/MM1   48
  Reserved      ST2/MM2   64
  Reserved      ST3/MM3   80
  ------------- --------- ---------- -------- ---------- ----- ----- ----- --- --- --- --- --- --- --- --- --

  : Layout of the 64-bit-mode FXSAVE Map (REX.W = 0)

Reserved

ST4/MM4

96

Reserved

ST5/MM5

112

Reserved

ST6/MM6

128

Reserved

ST7/MM7

144

XMM0

160

XMM1

176

XMM2

192

XMM3

208

XMM4

224

XMM5

240

XMM6

256

XMM7

272

XMM8

288

XMM9

304

XMM10

320

XMM11

336

XMM12

352

XMM13

368

XMM14

384

XMM15

400

Reserved

416

Reserved

432

Reserved

448

Available

464

Available

480

Available

496

"
	^ self 
		addInstruction: #fxsave
		operands: { aMemoryOperand }