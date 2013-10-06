invokeMethod: aClosure on: receiver message: aMessage
	| result |

	self assert: aClosure numArgs = aMessage numArgs.
	
	self
		methodContextFor: aClosure
		receiver: receiver
		message: aMessage.

	result := self interpretMethod: aClosure ast.
	
	self isExplicitelyReturning 
		ifFalse: [ result := self currentSelf ].
		
	self popContext.

	^ result