breakpointForCondition
	(UIManager default request: 'Break on what condition?')	
		ifNotNil: [ :condition | (Breakpoint in: context selectedNode) when: {OpalCompiler evaluate: condition}]