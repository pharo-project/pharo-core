manipulating
replace: anInstruction with: otherInstructions
	
	"replace a single instruction with one or more other instructions"
	| instr |
	
	anInstruction == self ifTrue: [
		otherInstructions last next: self next.
		^ otherInstructions ].
	
	instr := self.
	[ instr notNil and: [instr next ~~ anInstruction ]] whileTrue: [ instr := instr next ].
	instr notNil ifTrue: [
		otherInstructions last next: instr next next.
		instr next: otherInstructions 
		].  