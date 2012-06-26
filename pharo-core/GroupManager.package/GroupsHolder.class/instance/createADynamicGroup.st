adding
createADynamicGroup

	| entry aClass aSelector |
	entry := UIManager default textEntry: 'Name of the new group:' title: 'Create a new group' entryText: 'MyNewGroupName'.
	aClass := nil.
	aSelector := nil.
	^ entry ifNotNil: [ self addADynamicGroupSilentlyNamed: entry model: aClass selector: aSelector ].