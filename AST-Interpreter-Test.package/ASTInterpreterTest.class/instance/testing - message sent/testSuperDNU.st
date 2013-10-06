testSuperDNU
	| interpretationError dnu |
	
	[ self interpret: 'InterpreterTest new unknownSuperSend' ]
		on: InterpretationError
		do: [ :err| interpretationError := err ].
	
	dnu := interpretationError cause. 
	self assert: dnu message selector equals: #aSelectorThatDoesNotExist.
	self assert: dnu message arguments isEmpty.
	self assert: (dnu receiver isKindOf: InterpreterTest).
	
	
	[ self interpret: 'InterpreterTest new unknownSuperSendInNestedBlock' ]
		on: InterpretationError
		do: [ :err| interpretationError := err ].
	
	dnu := interpretationError cause. 
	self assert: dnu message selector equals: #aSelectorThatDoesNotExist.
	self assert: dnu message arguments isEmpty.
	self assert: (dnu receiver isKindOf: InterpreterTest).