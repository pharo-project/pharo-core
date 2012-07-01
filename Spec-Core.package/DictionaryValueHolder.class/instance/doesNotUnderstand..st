protocol
doesNotUnderstand: aMessage

	^ (contents respondsTo: aMessage selector)
		ifTrue: [ contents perform: aMessage selector withEnoughArguments: aMessage arguments ]
		ifFalse: [ super doesNotUnderstand: aMessage ]