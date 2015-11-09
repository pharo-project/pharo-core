beTopWindow
	
	TopWindow ifNotNil: [ :oldWindow | oldWindow privateBePassive ].
	
	TopWindow := self.
	self announceActivated.