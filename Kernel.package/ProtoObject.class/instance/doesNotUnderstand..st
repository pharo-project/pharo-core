system primitives
doesNotUnderstand: aMessage

	^ MessageNotUnderstood new 
		message: aMessage;
		receiver: self;
		signal