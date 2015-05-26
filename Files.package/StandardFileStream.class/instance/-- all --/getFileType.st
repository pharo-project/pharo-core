getFileType
	"On the Macintosh, get the file type and creator of this file. On other platforms, do nothing."

	^ self fullName asFileReference macTypeAndCreator
