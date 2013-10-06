initialize

	session := nil asValueHolder.
	label := nil asValueHolder.
	super initialize.
	
	needRefresh := false.
	
	self announcer weak
		on: WidgetBuilt
		send: #onWidgetBuilt
		to: self.
		
	self whenWindowChanged: [:w | w whenClosedDo: [ self close ] ].
	
	session whenChangedDo: [:newSession :oldSession |
		self removeActionsForSession: oldSession.
		self registerActionsForSession: newSession.
		self updateToolbarFromSession: newSession.
		self updateStackFromSession: newSession ].
	
	label whenChangedDo: [ 
		self updateTitle ]