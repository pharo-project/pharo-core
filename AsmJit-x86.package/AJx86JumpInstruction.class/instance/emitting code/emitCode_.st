emitCode: asm
	"generate opcodes"

	| delta code nextInstruction target desc |
	
	target := label position.
	target ifNil: [ ^ machineCode := nil ].
	
	nextInstruction := position + 2.
	delta := (target - nextInstruction) asImm.
	desc := self instructionDesciptions at: name.	"can we use 8bit offset?"
	machineCode := delta isInt8
		ifTrue: [ 	self emitShortJump: desc offset: delta ]
		ifFalse: [ self emitLongJump: desc target: target ]