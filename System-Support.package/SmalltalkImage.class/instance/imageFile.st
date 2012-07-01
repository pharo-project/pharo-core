image, changes names
imageFile
	"Answer the file for the current image."
	"SmalltalkImage current imageName"

	^ self primImagePath asFile
