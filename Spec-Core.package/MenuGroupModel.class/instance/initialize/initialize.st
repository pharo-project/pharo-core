initialize

	super initialize.

	items := OrderedCollection new asReactiveVariable.
	autoRefresh := nil asReactiveVariable.
	
	autoRefresh whenChangedDo: [ :aBoolean | self menuItems do: [ :each | each autoRefresh: aBoolean ] ]