snapshot and quit
startupImage: resuming snapshotWorked: snapshotResult
	| startupErrors |
	self vm setGCParameters.	
	deferredStartupActions := nil.
	resuming ifTrue: [ Smalltalk clearExternalObjects ].
	
	startupErrors := OrderedCollection new.
	
	UIManager default boot: resuming during: [
		startupErrors addAll: (self processStartUpList: resuming).
		resuming ifTrue: [ self recordStartupStamp ]
		].
	
	startupErrors addAll: (self executeDeferredStartupActions: resuming).
	
	startupErrors isEmpty 
		ifFalse: [ self handleStartupErrors: startupErrors ].
		
	snapshotResult == nil
		ifTrue: [ self error: 'Failed to write image file (disk full?)' ].