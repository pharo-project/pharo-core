testReturnTopFromBlock
	| selector methodNode scanner |
	
	selector := (methodNode := self compile2methodNode: 'returnTopFromBlock |ia| ^[ia]') selector.
	scanner := InstructionStream on: methodNode method.
	3 timesRepeat: [scanner nextInstruction].
	self assert: scanner peekInstruction selector == #blockReturnTop
		description: ('Failed ' , selector)