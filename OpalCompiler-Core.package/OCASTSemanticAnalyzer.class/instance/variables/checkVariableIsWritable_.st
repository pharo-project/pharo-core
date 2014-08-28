checkVariableIsWritable: aVariable
	^ (self compilationContext allowBlockArgumentAssignment and: [ aVariable scope isBlockScope ])
		or: [ aVariable isWritable ]