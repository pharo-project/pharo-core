fixing
fixSubclasses
	"Fix all the missing subclasses"
	" self fixSubclasses "
	SystemNavigation new allClassesDo: [ :cls|
		(cls superclass subclasses includes: cls)
			ifFalse: [ cls superclass addSubclass: cls ]]