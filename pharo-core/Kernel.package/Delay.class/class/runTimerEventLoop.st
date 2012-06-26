timer process
runTimerEventLoop
	"Run the timer event loop."
	[RunTimerEventLoop] whileTrue: [self handleTimerEvent]