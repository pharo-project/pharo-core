initialize

	super initialize.

	groups := OrderedCollection new asReactiveVariable.
	title := nil asReactiveVariable.
	icon := nil asReactiveVariable.
	autoRefresh := nil asReactiveVariable.
	
	autoRefresh whenChangedDo: [ :aBoolean | self menuGroups do: [ :each | each autoRefresh: aBoolean ] ]