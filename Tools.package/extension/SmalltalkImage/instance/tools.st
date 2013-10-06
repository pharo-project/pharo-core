tools

	^ Tools ifNil: [
		Tools := ToolRegistry new ]