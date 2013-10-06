blockClosureValueWithArguments: aBlockClosure message: aMessage
	| block result arguments|
	
	block := aBlockClosure code.
	arguments :=  aMessage arguments at: 1.

	(aBlockClosure numArgs = arguments size) ifFalse: [ ^self reflectiveFailedToken ].
	
	block size = 0 ifTrue: [ ^ nil ].
	
	self blockContextFor: aBlockClosure message: (Message selector: nil arguments: arguments).
	
	result := self interpretBlock: block.

	self isExplicitelyReturning ifTrue: [
		self context homeContext isDead ifTrue: [
			^self sendCannotReturn: result from: context]].
	
	self popContext.
	^ result