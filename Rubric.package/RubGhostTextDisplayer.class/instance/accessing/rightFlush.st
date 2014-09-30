rightFlush
	self
		handleTextChangeWhile: [ ghostText selectAll; rightFlush; deselect ]
