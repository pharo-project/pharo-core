newCodeEnabled: aBoolean
	| delaysToTransfer |
	"Delay newCodeEnabled: false"
	"Delay newCodeEnabled: true"
	delaysToTransfer := Delay stopTimerEventLoop. 
	EnableNewCode := aBoolean = true. "ensure only boolean place in variable"
	Delay initialize.
	self startTimerEventLoop: delaysToTransfer.
	
	"EnableNewCode := false."