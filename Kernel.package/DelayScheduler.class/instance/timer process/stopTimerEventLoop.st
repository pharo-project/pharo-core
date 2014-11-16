stopTimerEventLoop
	"Stop the timer event loop"
	| remainingDelays |
	remainingDelays := OrderedCollection new.
	runTimerEventLoop := false.
	timingSemaphore signal.
	timerEventLoop := nil.
	activeDelay ifNotNil: [ remainingDelays add: activeDelay ].
	suspendedDelays do: [ :delay | remainingDelays add: delay ].
	^ remainingDelays asArray.
