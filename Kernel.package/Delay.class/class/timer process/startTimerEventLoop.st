startTimerEventLoop
	"Start the timer event loop"
	"Delay startTimerEventLoop"
self newCodeEnabled 
  ifTrue: [
	Scheduler startTimerEventLoop.
	]
  ifFalse: [
	| delaysToTransfer |
	delaysToTransfer := self stopTimerEventLoop.
	self startTimerEventLoop: delaysToTransfer.
	].
