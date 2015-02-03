doesNotUnderstand: aMessage
	^ self rubric
		perform: aMessage selector 
		withArguments: aMessage arguments