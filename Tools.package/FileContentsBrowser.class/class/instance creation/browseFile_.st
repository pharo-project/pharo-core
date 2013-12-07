browseFile: aFilename
	"Open a file contents browser on a file of the given name"

	aFilename ifNil: [^ self inform: 'File name to browse is nil'].
	self browseFiles: (Array with: aFilename)