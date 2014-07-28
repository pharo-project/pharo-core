listMouseDown: anEvent

	self showPackages
		ifFalse: [ 
			self showPackages: true.
			self packageWidget mouseDown: anEvent ].
