private-XML code
issueXMLOwnerOn: stream
	stream
		nextPutAll:
			'<issues:owner>
					<issues:username>'.
	self xmlEscape: self tracker user email on: stream.
	stream
		nextPutAll:
					'</issues:username>
		  	</issues:owner>'