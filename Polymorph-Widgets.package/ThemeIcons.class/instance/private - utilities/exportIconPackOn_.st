exportIconPackOn: directoryReference
	directoryReference ensureCreateDirectory.
	self selectorsAndIcons keysAndValuesDo: [ :selector :form | 
		(directoryReference / (self selectorToIconName: selector))
			writeStreamDo: [ :stream | (PNGReadWriter on: stream) nextPutImage: form ]]