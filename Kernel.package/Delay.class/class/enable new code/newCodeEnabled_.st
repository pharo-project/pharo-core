newCodeEnabled: aBoolean

	"Delay newCodeEnabled: false"
	"Delay newCodeEnabled: true"
	self stopTimerEventLoop. 
	EnableNewCode := aBoolean = true. "ensure only boolean place in variable"
	self initialize.
	self startTimerEventLoop.
	
	"EnableNewCode := false."