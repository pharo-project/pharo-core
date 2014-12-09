glamorousBookmark
	^ self icons
			at: #'glamorousBookmark'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self glamorousBookmarkIconContents readStream) ].