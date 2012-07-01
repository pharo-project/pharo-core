image, changes names
imagePath: newPath
	"Set the the full path name for the current image.  All further snapshots will use this."

	| encoded |
	encoded := (FilePath pathName: newPath isEncoded: false) asVmPathName.
	self primImagePath: encoded.
