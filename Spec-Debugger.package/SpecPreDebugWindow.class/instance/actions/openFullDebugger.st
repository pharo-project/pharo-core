openFullDebugger
	| currentDebugger |
	
	currentDebugger := self debugger.
	self debugger: nil.
	self close.
	currentDebugger 
		openWithSpec;
		updateToolbar;
		resetAutoRefresh;
		updateCodeFromContext;
		label: title