runTimerEventLoop
	"Run the timer event loop."
self newCodeEnabled 
  ifTrue: [
	"new code"
	]
  ifFalse: [
	[ RunTimerEventLoop ] whileTrue: [ self handleTimerEvent ]
	].

