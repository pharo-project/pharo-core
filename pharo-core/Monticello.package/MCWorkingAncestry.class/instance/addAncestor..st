as yet unclassified
addAncestor: aNode
	ancestors := (self ancestors reject: [:each | aNode hasAncestor: each])
		copyWith: aNode