cleanUp
	"Stop and remove the process for sending usage data. Delete all recorder that from the queue."
	
	instance ifNotNil: [ 
		instance stopDelivering ifNotNil: [ :aProcess | 
			[ aProcess terminate ] on: Error do: [ "ignore error" ] ].
		instance := nil ]
