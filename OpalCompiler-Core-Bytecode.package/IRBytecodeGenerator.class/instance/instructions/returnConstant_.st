returnConstant: constant
	bytes ifEmpty: [ lastSpecialReturn := Message selector: #returnConstant: argument: constant ].
	constant == true
		ifTrue: [ ^ self nextPut: (Bytecodes at: #returnTrue) ].
	constant == false
		ifTrue: [ ^ self nextPut: (Bytecodes at: #returnFalse) ].
	constant isNil
		ifTrue: [ ^ self nextPut: (Bytecodes at: #returnNil) ].
	self pushLiteral: constant.
	self returnTop