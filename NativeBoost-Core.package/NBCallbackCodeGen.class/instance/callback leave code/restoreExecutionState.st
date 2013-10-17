restoreExecutionState

	"emit code to restore execution state"
	
	asm decorateWith: 'restoreExecutionState' during: [

	"restore registers & other , see corresponding #saveExecutionState"
	self memCopy: savedReenterInterpreter to: self reenterInterpreterAddress  size: self primJumpBufSize.

	asm 
		mov: savedEBX to: EBX;
		mov: savedESI to: ESI;
		mov: savedEDI to: EDI;

		mov: savedCStackPointer to: EAX;
		mov: EAX to: self CStackPointerAddress asUImm ptr;
		
		
		mov: savedCFramePointer to: EAX;
		mov: EAX to: self CFramePointerAddress asUImm ptr.
		
	]