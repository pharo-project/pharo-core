next: aDecorator
	super next: aDecorator.
	aDecorator ifNotNil: [ 
		self textArea announcer
			when: RubTextAcceptRequest
			send: #whenTextAcceptRequest:
			to: self ]