accessing class hierarchy
subclasses
	"slow implementation since Behavior does not keep trace of subclasses"
	
	^ self class allInstances  select: [:each | each superclass = self ]