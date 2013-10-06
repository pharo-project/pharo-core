ok

	(acceptNewEntry and: [ list isEmpty ]) ifTrue: [ 
		self answer: self searchString ].
	
	self 
		cancelled: false;
		delete