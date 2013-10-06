spawnSpecDebugger
	| topView |
	topView := self topView.
	topView model: nil.
	"so close won't release me."
	self breakDependents.
	topView delete.
	
	(self debuggerClass debugSession: ((self debuggerClass 
		spanNewSessionForContext: self interruptedContext fromProcess: self interruptedProcess)
			errorWasInUIProcess: errorWasInUIProcess)) updateToolbar