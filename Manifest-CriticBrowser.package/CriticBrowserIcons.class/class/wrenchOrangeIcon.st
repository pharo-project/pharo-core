accesing
wrenchOrangeIcon

	^  icons
			at: #'wrenchOrangeIcon'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self  wrench_orangeIconContents readStream) ].
