initialize

	super initialize.
	
	history := NavigationHistory new.
	inspector := nil asReactiveVariable.
	
	self initializeShortcuts.
	inspector whenChangedDo: [ :new :old | 
		self updateInspectorFrom: old ].
	self announcer
		on: WidgetBuilt send: #setRefreshedToTrue to: self.
	
	canBeRefreshed := false.
	self whenWindowChanged: [ :w |
		w whenClosedDo: [ self inspector close ] ].