selectedNodeHasBreakpoint
	context ifNil: [ ^false ].
	^ context selectedNode hasBreakpoint