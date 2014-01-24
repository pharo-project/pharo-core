initialize

	sessionHolder := nil asReactiveVariable.
	labelHolder := nil asReactiveVariable.
	super initialize.
	
	needRefresh := false.
	
	self announcer
		on: WidgetBuilt
		send: #onWidgetBuilt
		to: self.
		
	self whenWindowChanged: [ :w | 
		w whenClosedDo: [ self clear ] ].
	
	sessionHolder whenChangedDo: [:newSession :oldSession |
		self removeActionsForSession: oldSession.
		self registerActionsForSession: newSession.
		self updateToolbarFromSession: newSession.
		self updateStackFromSession: newSession ].
	
	labelHolder whenChangedDo: [ 
		self updateTitle ]