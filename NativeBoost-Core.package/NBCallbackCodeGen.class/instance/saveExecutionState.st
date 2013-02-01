callback entry code
saveExecutionState

	"emit code to save execution state"
	
	asm decorateWith: 'saveExecutionState' during: [

	"save registers"
	savedEBX := gen reserveTemp.
	savedESI := gen reserveTemp.
	savedEDI := gen reserveTemp.
	savedCStackPointer := gen reserveTemp.
	savedCFramePointer := gen reserveTemp.
	savedReenterInterpreter := gen reserveTemp.
	
	asm 
		mov: EBX to: savedEBX;
		mov: ESI to: savedESI;
		mov: EDI to: savedEDI;

		mov: self CStackPointerAddress asUImm ptr to: EAX;
		mov: EAX to: savedCStackPointer;
		mov: self CFramePointerAddress asUImm ptr to: EAX;
		mov: EAX to: savedCFramePointer;
		
		sub: asm ESP with: self primJumpBufSize;
		mov: ESP to: savedReenterInterpreter.
	
		self memCopy: self reenterInterpreterAddress to: savedReenterInterpreter  size: self primJumpBufSize
	]