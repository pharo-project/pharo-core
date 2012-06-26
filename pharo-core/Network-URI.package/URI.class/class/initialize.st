initialization
initialize
	"URI initialize"

	ClientClasses := Dictionary new.
	ClientClasses
		at: 'http' put: #HTTPClient;
		at: 'ftp' put: #FTPClient;
		at: 'file' put: #FileReference
