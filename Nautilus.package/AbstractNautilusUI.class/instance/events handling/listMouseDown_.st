listMouseDown: anEvent

	self showPackages
		ifFalse: [ 
			self showPackages: true.
			list mouseDown: anEvent ].
