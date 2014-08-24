visitAssignmentNode: anAssignmentNode
	| var |
	var := anAssignmentNode variable name.
	(arguments includes: var)
		ifTrue: [ argumentAssignments add: var ]