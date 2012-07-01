as yet unclassified
radioSelectedForm
	^ Form fromBinaryStream: ( Base64MimeConverter mimeDecodeToBytes: self radioSelectedFormContents readStream)
 