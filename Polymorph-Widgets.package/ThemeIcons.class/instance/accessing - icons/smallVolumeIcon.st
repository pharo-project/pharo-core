smallVolumeIcon
	"Private - Generated method"
	^ icons
			at: #'smallVolume'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallVolumeIconContents readStream) ].