smallRemoteOpenIcon
	"Private - Generated method"
	^ icons
			at: #'smallRemoteOpen'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallRemoteOpenIconContents readStream) ].