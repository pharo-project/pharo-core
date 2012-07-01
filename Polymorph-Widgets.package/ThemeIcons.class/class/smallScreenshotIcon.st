private - icons
smallScreenshotIcon
	"Private - Generated method"
	^icons 
			at: #smallScreenshotIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallScreenshotIconContents readStream) ].