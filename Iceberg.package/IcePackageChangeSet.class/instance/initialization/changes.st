changes
	^ changes ifNil: [ 
		self analyseChanges. 
		changes ]