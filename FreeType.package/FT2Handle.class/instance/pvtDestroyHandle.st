private
pvtDestroyHandle
	"This should only be sent from the finalizer."
	handle ifNil: [ ^self ].
	
	self primDestroyHandle.
	self beNull.
