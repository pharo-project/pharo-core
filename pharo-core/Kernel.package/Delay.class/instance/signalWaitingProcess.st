private
signalWaitingProcess
	"The delay time has elapsed; signal the waiting process."

	beingWaitedOn := false.
	delaySemaphore signal.
