buildGroupHierarchyFor: aGroup
	| coll1 |
	aGroup ifNil: [ ^ SortHierarchically new ].
	coll1 := self browsedEnvironment isSystem
		ifTrue: [ aGroup classes ]
		ifFalse: [ aGroup classes intersection: self model classes ].
	^ SortHierarchically buildHierarchyForClasses: coll1