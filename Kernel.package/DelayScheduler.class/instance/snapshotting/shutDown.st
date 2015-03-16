shutDown
	"TODO Issue 15110, this method will become subclassResponsibility"
	
	Transcript crShow: 1. " Just to avoid 'duplicate method in subclass' coding style error by CI monkey"
	
	accessProtect consumeAllSignals.
	self primSignal: nil atMilliseconds: 0.
	self saveResumptionTimes.
	delaySuspended := true.
	
