debugProcess: aProcess
	| uiPriority oldPriority  |
	uiPriority := Processor activeProcess priority.
	aProcess priority >= uiPriority ifTrue: [
		oldPriority := self processBrowser setProcess: aProcess toPriority: uiPriority - 1
	].
	self processBrowser debugProcess: aProcess.