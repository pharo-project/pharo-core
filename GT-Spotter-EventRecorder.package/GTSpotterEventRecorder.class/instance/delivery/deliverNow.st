deliverNow
	"for testing purpose"
	deliveryDelay ifNotNil: [ :aDelay | aDelay delaySemaphore signal. aDelay unschedule. ]