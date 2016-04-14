arguments
	^ self example afterArguments collect: [ :each | 
		self at: each ifAbsent: [ nil ] ]