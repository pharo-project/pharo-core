signalWaitingProcess
	"The delay time has elapsed; signal the waiting process."

	beingWaitedOn := false.
	delaySemaphore signal.

	"TODO: Remove me when all #newCodeEnabled cleaned up (Case 14261).
	due to rename to #timingPrioritySignalWaitingProcess"