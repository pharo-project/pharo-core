runTimerEventLoop
	"Run the timer event loop."
self newCodeEnabled 
  ifTrue: [
	self shouldNotImplement.
	]
  ifFalse: [
	[ RunTimerEventLoop ] whileTrue: [ self handleTimerEvent ]
	].

