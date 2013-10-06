debugError: anError
	"Handle an otherwise unhandled error"

	self
		openOn: Processor activeProcess
		context: anError signalerContext
		label: anError description
		contents: nil
		fullView: false