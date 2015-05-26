glamorousCloudIcon
	"Private - Generated method"
	^icons 
			at: #glamorousCloudIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousCloudIconContents readStream) ].