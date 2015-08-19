laraPictureImage
	^ ImageReadWriter formFromStream: (Base64MimeConverter mimeDecodeToBytes: self laraPictureData readStream)