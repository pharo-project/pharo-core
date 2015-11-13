breakpointForCondition
	(UIManager default request: 'Break on what condition?')	
		ifNotNil: [ :condition | (Breakpoint in: context selectedNode) break: #when: withArguments: {OpalCompiler evaluate: condition}]