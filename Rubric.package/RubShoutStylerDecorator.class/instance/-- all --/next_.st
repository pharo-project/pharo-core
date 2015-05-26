next: aDecorator
	super next: aDecorator.
	aDecorator ifNotNil: [ 
		self textArea announcer subscribe: RubTextAcceptRequest send: #whenTextAcceptRequest: to: self.
		savedTextColor := self textArea textColor.
		self textArea textColor: Color transparent]