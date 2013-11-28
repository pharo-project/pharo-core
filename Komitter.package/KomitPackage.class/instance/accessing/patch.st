patch
	
	patch ifNil: [ semaphore wait ].
	semaphoreValid ifFalse: [ ^ nil ].
	
	^ patch