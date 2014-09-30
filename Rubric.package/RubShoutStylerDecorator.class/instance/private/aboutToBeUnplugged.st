aboutToBeUnplugged
	next
		ifNotNil: [ 
			self textArea announcer unsubscribe: self.
			self textArea textColor: savedTextColor ]