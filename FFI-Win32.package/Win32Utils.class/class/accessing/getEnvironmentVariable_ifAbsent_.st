getEnvironmentVariable: name ifAbsent: block
	"Win32Utils getEnvironmentVariable: 'APPDATA' ifAbsent: [nil]"
	"Win32Utils getEnvironmentVariable: 'APPDATAx' ifAbsent: [5]"

	^self getEnvironmentVariable: name buffer: (ByteArray new: 256) ifAbsent: block