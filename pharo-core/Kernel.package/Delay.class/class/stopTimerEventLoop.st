timer process
stopTimerEventLoop
	"Stop the timer event loop"
	RunTimerEventLoop := false.
	TimingSemaphore signal.
	TimerEventLoop := nil.