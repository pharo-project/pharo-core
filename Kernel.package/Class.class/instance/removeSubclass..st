accessing class hierarchy
removeSubclass: aSubclass 
	"If the argument, aSubclass, is one of the receiver's subclasses, remove it."

	subclasses == nil ifFalse:
		[subclasses :=  subclasses copyWithout: aSubclass.
		subclasses isEmpty ifTrue: [subclasses := nil]].
