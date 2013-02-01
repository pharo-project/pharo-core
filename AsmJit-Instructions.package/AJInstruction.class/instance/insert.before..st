manipulating
insert: newInstruction before: anInstruction
	
	"replace a single instruction with one or more other instructions"
	| instr  anext |
	
	anInstruction == self ifTrue: [
		newInstruction last next: self.
		^ newInstruction ].
	
	instr := self.
	[ (anext := instr next) notNil and: [ anext ~~ anInstruction ]] whileTrue: [ instr := anext ].

	instr next ifNotNil: [
		newInstruction do: [:each | 
			each increaseLevel: instr level  
			].
		newInstruction last next: instr next.
		instr next: newInstruction ].  