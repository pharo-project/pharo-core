prepareForNewProcess: aProcess
	| processBlock |
	watchDogProcess ifNil: [ ^self ].  "we should not catch watchDogProcess"
	forkedProcesses add: aProcess.
	aProcess suspendedContext sender ifNotNil: [ ^self ]. "Some existing tests in system create processes on arbitrary block and then check suspendedContext state. Without this 'if' all this tests will fail"
	processBlock := aProcess suspendedContext receiver.
	processBlock isClosure ifFalse: [ ^self ]. "same case as in previous comment".
	
	aProcess on: Error do: [ :err | 
		failedProcesses at: aProcess put: err.
		aProcess suspend.
		err pass]