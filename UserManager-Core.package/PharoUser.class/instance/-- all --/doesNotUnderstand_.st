doesNotUnderstand: aMessage

	^ [ self permissions perform: aMessage selector withEnoughArguments: aMessage arguments ] 
		on: MessageNotUnderstood 
		do: [ super doesNotUnderstand: aMessage ]