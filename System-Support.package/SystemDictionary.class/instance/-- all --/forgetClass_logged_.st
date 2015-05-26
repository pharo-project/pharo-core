forgetClass: aClass logged: aBool 
	"Delete the class, aClass, from the system.
	Note that this doesn't do everything required to dispose of a class - to do that use Class>>removeFromSystem."

	aBool ifTrue: [SystemAnnouncer uniqueInstance classRemoved: aClass fromCategory: aClass category].		
	self organization removeElement: aClass name.
	Smalltalk removeFromStartUpList: aClass.
	Smalltalk removeFromShutDownList: aClass.
	self removeKey: aClass name ifAbsent: [].
	self flushClassNameCache