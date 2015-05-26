doesNotUnderstand: aMessage

	^ tree
		perform: aMessage selector
		withArguments: aMessage arguments