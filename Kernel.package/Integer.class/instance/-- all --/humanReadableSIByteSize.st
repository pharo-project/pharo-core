humanReadableSIByteSize
	^ String streamContents: [ :s|
		self humanReadableSIByteSizeOn: s ]