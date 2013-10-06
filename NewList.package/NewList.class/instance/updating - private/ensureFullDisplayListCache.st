ensureFullDisplayListCache

	[ listCache doWithIndex: [:e :i || process |
		process := [ | item |
			item := self model getDisplayForItem: e at: i.
			(displayListCache at: i) ifNil: [
			displayListCache at: i put: item ]] fork.
		
		runningProcesses at: i put: process ]] fork. 