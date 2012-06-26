file list services
fileReaderServicesForFile: fullName suffix: suffix
	"Don't offer to compress already-compressed files
	sjc 3-May 2003-added jpeg extension"

	^({ 'gz' . 'sar' . 'zip' . 'gif' . 'jpg' . 'jpeg'. 'pr'. 'png'} includes: suffix)
		ifTrue: [ #() ]
		ifFalse: [ self services ]
