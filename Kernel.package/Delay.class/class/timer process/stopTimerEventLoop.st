stopTimerEventLoop
self newCodeEnabled 
  ifTrue: [
	^ Scheduler stopTimerEventLoop.
	]
  ifFalse: [
	"Stop the timer event loop"
	| remainingDelays |
	remainingDelays := OrderedCollection new.
	RunTimerEventLoop := false.
	TimingSemaphore ifNotNil: [ TimingSemaphore signal ].
	TimerEventLoop := nil.
	ActiveDelay ifNotNil: [ remainingDelays add: ActiveDelay ].
	SuspendedDelays do: [ :delay | remainingDelays add: delay ].
	^ remainingDelays asArray.
	].
