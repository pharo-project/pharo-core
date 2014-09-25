createWindow
	handle ifNotNil: [ self error: 'The window is already created.' ].
	
	handle := initialAttributes createWindowHandleFor: self.
	handle isValid  ifTrue: [ 
		NBExternalResourceManager addResource: self data: handle
	]