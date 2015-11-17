execute
	context hasUnacceptedEdits ifTrue: [ ^context sourceTextArea acceptEdits].
	
	self selectedNodeHasBreakpoint 
		ifFalse: [(Breakpoint in: context selectedNode) break: #always withArguments: #()]
		ifTrue: [ Breakpoint removeFrom: context selectedNode]