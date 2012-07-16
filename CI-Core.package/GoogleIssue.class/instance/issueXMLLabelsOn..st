private-XML code
issueXMLLabelsOn: stream
	labels
		do: [ :e | 
			stream nextPutAll: '<issues:label>'.
			self xmlEscape: e on: stream.
			stream nextPutAll: '</issues:label>' ]