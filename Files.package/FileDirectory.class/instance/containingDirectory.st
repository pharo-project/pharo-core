enumeration
containingDirectory
	"Return the directory containing this directory."

	^ FileDirectory on: (FileDirectory dirPathFor: pathName asSqueakPathName)
