initialize

	"AJConstants initialize"
	
	"Operand is none, used only internally."
	OpNONE := 0.
	"Operand is register"
	OpREG := 1.
	"Operand is memory"
	OpMem := 2.
	"Operand is immediate."
	OpImm := 3.
	"Operand is label. "
	OpLabel := 4.

	RegTypeMask := 16rF0.
	RegCodeMask := 16r0F.
	RegRequiresRexMask := 16r100.
	RegProhibitsRexMask := 16r200.
	RegHighByteMask := 2r111100.
	
	"1 byte size."
	SizeByte := 1.
	"2 bytes size."
	SizeWord := 2.
	"4 bytes size."
	SizeDWord := 4.
	"8 bytes size."
	SizeQWord := 8.
	"10 bytes size."
	SizeTWord := 10.
	"16 bytes size."
	SizeDQWord := 16.


	"ID for AX/EAX/RAX registers."
	RIDEAX := 0.
	"ID for CX/ECX/RCX registers."
	RIDECX := 1.
	"ID for DX/EDX/RDX registers."
	RIDEDX := 2.
	"ID for BX/EBX/RBX registers."
	RIDEBX := 3.
	"ID for SP/ESP/RSP registers."
	RIDESP := 4.
	"ID for BP/EBP/RBP registers."
	RIDEBP := 5.
	"ID for SI/ESI/RSI registers."
	RIDESI := 6.
	"ID for DI/EDI/RDI registers."
	RIDEDI := 7.

	"8 bit general purpose register type."
	RegGPB := 16r00.
	"16 bit general purpose register type."
	RegGPW := 16r10.
	"32 bit general purpose register type."
	RegGPD := 16r20.
	"64 bit general purpose register type. "
	RegGPQ := 16r30.
	"X87 (FPU) register type. "
	RegX87 := 16r50.
	"64 bit mmx register type."
	RegMM := 16r60.
	"128 bit sse register type."
	RegXMM := 16r70.

	"Segment override prefixes."
	
	"No segment override prefix."
	SegmentNONE := 0.
	"Use 'cs' segment override prefix."
	SegmentCS := 1.
	"Use 'ss' segment override prefix."
	SegmentSS := 2.
	"Use 'ds' segment override prefix."
	SegmentDS := 3.
	"Use 'es' segment override prefix."
	SegmentES := 4.
	"Use 'fs' segment override prefix."
	SegmentFS := 5.
	"Use 'gs' segment override prefix."
	SegmentGS := 6.
  
	self initializePrefetchHints.
	self initializeConditionCodes.
	self initOpCodes.
	
