private - icons
smallPublishIcon
	"Private - Generated method"
	^ icons
			at: #'smallPublish'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallPublishIconContents readStream) ].