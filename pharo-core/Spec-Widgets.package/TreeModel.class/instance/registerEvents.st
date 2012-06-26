initialization
registerEvents

	rootsHolder whenChangedDo: [ self changed: #getRoots ].
	childrenBlockHolder whenChangedDo: [ self changed: #getRoots ].
	wrapBlockHolder whenChangedDo: [ self changed: #getRoots ].