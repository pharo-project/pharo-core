currentStep
	
	^ currentStep ifNil: [ 
			self isEmpty 
				ifTrue: [ self newStep origin: self foundationOrigin ]
				ifFalse: [ currentStep := self steps last ] ]