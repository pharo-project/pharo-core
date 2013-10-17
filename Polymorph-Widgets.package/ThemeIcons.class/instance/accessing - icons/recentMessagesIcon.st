recentMessagesIcon
	"Private - Generated method"
	^ icons
			at: #'recentMessagesIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self recentMessagesIconContents readStream) ].