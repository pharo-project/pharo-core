glamorousCloudPausedIcon
	"Private - Generated method"
	^icons 
			at: #glamorousCloudPausedIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousCloudPausedIconContents readStream) ].