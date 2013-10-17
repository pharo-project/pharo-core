browseFile: aFilename
	"Open a file contents browser on a file of the given name"

	aFilename ifNil: [^ Beeper beep].
	self browseFiles: (Array with: aFilename)