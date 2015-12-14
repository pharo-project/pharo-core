getEnvironmentVariable: name buffer: buffer ifAbsent: block
	"Win32Utils getEnvironmentVariable: 'APPDATA' "
	"Win32Utils getEnvironmentVariable: 'APPDATAx' "
	"http://msdn.microsoft.com/en-us/library/ms683188(VS.85).aspx "
	
	| retval err |
	retval := self apiGetEnvironmentVariable:  name buffer: buffer size: buffer byteSize.
	retval = 0
		ifTrue: [
			err := Win32Error lastError.
			^(err errorName = 'ERROR_ENVVAR_NOT_FOUND')
				ifTrue: [block value]
				ifFalse: [
					self error: 'Problem with retrieving env var ' , name , '. Code is ' , err errorName.
					nil
				]
		].
	^(retval < buffer byteSize)
		ifTrue: [( buffer copyFrom: 1 to: retval ) asString]
		ifFalse: [ self getEnvironmentVariable: name buffer: (ByteArray new: retval) ifAbsent: block ].
