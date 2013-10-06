epilogue
	
	asm
		label: self returnLabel;
		emitEpilogue: (self optStdcall ifTrue: [ stackSize] ifFalse: [0]).