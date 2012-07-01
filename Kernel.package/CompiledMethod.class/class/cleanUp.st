instance creation
cleanUp

	self allInstances do: [:e | e isInstalled ifFalse: [e zapSourcePointer]].
	"pay attention since zapSourcePointer creates a new compiled method. So iterating while
	changing it is a bad idea. This is why we use allInstances do and not allInstancesDo:"