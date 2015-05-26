buildHierarchyForClasses: aCollection
	| nodes |
	nodes := aCollection collect: [ :cl | SortHierarchicallyNode on: cl theNonMetaClass].
	^ self new
		setHierarchy: (self sortNodes: nodes);
		yourself