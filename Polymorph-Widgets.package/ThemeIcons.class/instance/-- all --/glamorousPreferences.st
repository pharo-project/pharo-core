glamorousPreferences
	"Private - Generated method"
	^icons 
			at: #glamorousPreferencesIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousPreferencesIconContents readStream) ].