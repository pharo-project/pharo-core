visitAssignmentNode: anAssignmentNode
	"search registered argument variable with the same name and scope"

	| varName varScope |
	super visitAssignmentNode: anAssignmentNode.
	varName := anAssignmentNode variable name.
	varScope := anAssignmentNode methodOrBlockNode.
	arguments
		detect: [ :elem | elem name = varName and: [ elem methodOrBlockNode = varScope ] ]
		ifFound: [ argumentAssignments add: varName ]