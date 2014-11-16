startTimerEventLoop
	| delaysToTransfer |
	"Start the timer event loop"
	"Delay startTimerEventLoop"
	delaysToTransfer := self stopTimerEventLoop.
	self startTimerEventLoop: delaysToTransfer.

