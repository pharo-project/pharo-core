resolving
resolveString: aString 
	| decoded fs |
	decoded := (FilePath pathName: aString isEncoded: true) asSqueakPathName.
	fs := FileSystem disk.
	^ FileReference
		fileSystem: fs
		path: (fs pathFromString: decoded)