addInstruction: anInstruction
	"add one or multiple instructions to the tail"
	instructions ifNil: [
		instructions := anInstruction.
		]
	ifNotNil: [
		last := last last next: anInstruction.
		].
	anInstruction level: level.
	last := anInstruction last.
	^ anInstruction 
