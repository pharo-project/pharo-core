convenience-debugging
debugError: anError
	"Handle an otherwise unhandled error"
	^Processor activeProcess
		debug: anError signalerContext
		title: anError description