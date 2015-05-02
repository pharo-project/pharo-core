aboutToBeUnplugged
	next ifNotNil: [ 
			self textArea announcer unsubscribe: self ]