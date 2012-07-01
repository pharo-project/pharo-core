private - icons
smallSystemBrowserIcon
	"Private - Generated method"
	^icons
			at: #smallSystemBrowserIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallSystemBrowserIconContents readStream) ].