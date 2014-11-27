testCaseSupportTimingSemaphore
self newCodeEnabled 
  ifTrue: [
	^ Scheduler testCaseSupportTimingSemaphore.
	]
  ifFalse: [
	^TimingSemaphore.
	].