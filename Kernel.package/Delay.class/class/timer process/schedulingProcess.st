schedulingProcess
self newCodeEnabled 
  ifTrue: [
	^ Scheduler schedulingProcess.
	]
  ifFalse: [
	^ TimerEventLoop 
	].

