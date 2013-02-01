initialize-release
reset 
	instructions := last := nil. 
	labels := Dictionary new.
	stackManager
		ifNil: [stackManager := AJRoutineStackManager new.]
		ifNotNil: #reset.		
	level := 0.
	self addInstruction: AJRoutinePrologue new.  