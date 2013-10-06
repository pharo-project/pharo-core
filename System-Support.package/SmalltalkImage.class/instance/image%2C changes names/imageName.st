imageName
	"Answer the full path name for the current image."
	"SmalltalkImage current imageName"

	| str |
	str := self primImageName.
	^ (FilePath pathName: str isEncoded: true) asSqueakPathName.
