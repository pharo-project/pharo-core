image, changes names
changesFile
	"Answer the file containing the current changes."

	^ self imageFile withExtension: self changesSuffix
