debugAction
	| currentDebugger |
	
	currentDebugger := self debugger.
	self debugger: nil.
	self abandonAction.
	currentDebugger 
		openWithSpec;
		updateToolbar;
		label: title