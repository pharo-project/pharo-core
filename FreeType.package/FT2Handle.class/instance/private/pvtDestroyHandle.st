pvtDestroyHandle
	"This should only be sent from the finalizer."
	self isValid ifFalse: [ ^self ].
	
	self primDestroyHandle.
	self beNull.
