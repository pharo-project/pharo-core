execute
	context hasUnacceptedEdits ifTrue: [ ^context sourceTextArea acceptEdits].
	
	self selectedNodeHasBreakpoint 
		ifFalse: [(Breakpoint in: context selectedNode) always]
		ifTrue: [ Breakpoint removeFrom: context selectedNode]