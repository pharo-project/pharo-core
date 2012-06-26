*Tools
tools

	^ Tools ifNil: [
		Tools := ToolRegistry new ]