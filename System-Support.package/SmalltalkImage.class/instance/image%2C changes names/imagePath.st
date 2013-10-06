imagePath
	"Answer the full path name for the current image."

	"SmalltalkImage current imageName"

	^ FilePathEncoder decode: self primImagePath