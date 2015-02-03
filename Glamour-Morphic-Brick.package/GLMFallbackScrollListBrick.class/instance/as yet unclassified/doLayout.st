doLayout
	super doLayout.
	self band hasSubbricks not ifTrue: [ self initializeItems ]