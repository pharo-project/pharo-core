snapshot and quit
logStartupError: anError into: aCollection tryDebugger: tryDebugger
	"try to debug the given error or add a freezed version to aCollection"
	tryDebugger ifTrue: [ 
		[ ^ anError debug ] 
			on: Error do: [ 
				"an error occured during error handling... 
				treat the error as a normal startup error " ]].

	self 
		logError: '==== Startup Error: ', anError description 
		inContext: anError signalerContext.
	"freeze the error"
	aCollection add: anError freeze.