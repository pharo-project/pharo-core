initialize
	"Win32Error initialize"

	ErrorCodes := Dictionary new.
	ErrorCodes
		at: 203 put: #('ERROR_ENVVAR_NOT_FOUND' 'There was no environment variable with that name');
		yourself