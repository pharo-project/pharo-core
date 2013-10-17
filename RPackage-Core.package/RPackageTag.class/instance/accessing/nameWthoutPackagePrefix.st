nameWthoutPackagePrefix 
	^ self name = self packageName 
		ifTrue: [ '' ]
		ifFalse: [ self name allButFirst: self packageName size + 1 "the extra is for the -" ]