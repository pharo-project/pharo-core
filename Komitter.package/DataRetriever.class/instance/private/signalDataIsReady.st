signalDataIsReady
	"Since mupltiple clients may have tried to access my data (and be trapped in a wait waiting for the end of the query), I need to signal as long as I have a client waiting"
	
	[ semaphore isSignaled ] whileFalse: [ semaphore signal ].
	semaphore consumeAllSignals.