file operations
fullPathFor: path
	"Return the fully-qualified path name for the given file."
	path isEmptyOrNil ifTrue: [^ pathName asSqueakPathName].
	(self class isAbsolute: path) ifTrue: [^ path].
	pathName asSqueakPathName = ''			"Root dir?"
		ifTrue: [ ^path].
	^(path first = $:)
		ifTrue: [ pathName asSqueakPathName, path ]
		ifFalse: [pathName asSqueakPathName, ':' , path]