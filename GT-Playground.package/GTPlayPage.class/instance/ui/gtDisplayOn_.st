gtDisplayOn: stream
	stream nextPutAll: (self content asString copyReplaceAll: String cr with: String space)