error handling
doesNotUnderstand: aMessage
	writeStream 
		perform: aMessage selector 
		withArguments: aMessage arguments