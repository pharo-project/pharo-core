free
	"A convenience method, to explicitly free external memory, symmetrical when using
	#externalNew: protocol for creating receiver.
	Do nothing if receiver is not external array. 
	" 
	self isExternal ifTrue: [
		data free.
	].