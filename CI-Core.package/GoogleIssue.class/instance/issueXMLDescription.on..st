private-XML code
issueXMLDescription: aMessage on: stream
	stream nextPutAll: '<content type="html">'.
	self xmlEscape: aMessage on: stream.
	stream nextPutAll: '</content>'