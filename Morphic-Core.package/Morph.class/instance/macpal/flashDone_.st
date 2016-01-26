flashDone: oldFillstyle

	self fillStyle = self flashFillStyle ifTrue: [ 
		self fillStyle: oldFillstyle	
	]