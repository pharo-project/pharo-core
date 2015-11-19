execute
	context hasUnacceptedEdits ifTrue: [ ^context sourceTextArea acceptEdits].
	
	self selectedNodeHasBreakpoint 
		ifFalse: [(Breakpoint in: context selectedNode) once]
		ifTrue: [ Breakpoint removeFrom: context selectedNode]