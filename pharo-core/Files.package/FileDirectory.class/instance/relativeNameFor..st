file name utilities
relativeNameFor: aFileName
	"Return the full name for aFileName, assuming that aFileName is a name relative to me."
	aFileName isEmpty ifTrue: [ ^pathName asSqueakPathName].
	^aFileName first = self pathNameDelimiter
		ifTrue: [ pathName asSqueakPathName, aFileName ]
		ifFalse: [ pathName asSqueakPathName, self slash, aFileName ]
