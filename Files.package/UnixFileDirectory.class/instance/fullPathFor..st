file names
fullPathFor: path
	"Return the fully-qualified path name for the given file."
	path isEmpty ifTrue: [^ pathName asSqueakPathName].
	path first = $/ ifTrue: [^ path].
	^ pathName asSqueakPathName = '/'			"Only root dir ends with a slash"
		ifTrue: ['/' , path]
		ifFalse: [pathName asSqueakPathName , '/' , path]