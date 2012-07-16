private-XML code
issueXMLAuthorOn: stream
	stream
		nextPutAll:
			'
		  <author>
		    <name>'.
	self xmlEscape: self tracker user email on: stream.
	stream
		nextPutAll:
			'</name>
		  </author>'