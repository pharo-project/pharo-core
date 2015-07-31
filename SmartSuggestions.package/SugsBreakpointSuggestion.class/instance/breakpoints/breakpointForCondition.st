breakpointForCondition
	(UIManager default request: 'Break on what condition?')	
		ifNotNil: [ :condition | (Breakpoint inNode: context selectedNode) break: #when: withArguments: {OpalCompiler evaluate: condition}]