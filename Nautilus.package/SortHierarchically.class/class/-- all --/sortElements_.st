sortElements: elements
	^ self sortNodes: (elements collect: [ :el | SortHierarchicallyNode on: el ])