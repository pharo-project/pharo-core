path access
fullPathFor: path
	^path isEmpty ifTrue:[pathName asSqueakPathName] ifFalse:[path]