withClassesIn: anEnvironment createHierarchySorter: aHierarchyClass 
	| coll1 |
	self ifNil: [ ^ aHierarchyClass new ].
	coll1 := anEnvironment isSystem
		ifTrue: [ self classes ]
		ifFalse: [ self classes intersection: anEnvironment classes ].
	^ aHierarchyClass buildHierarchyForClasses: coll1