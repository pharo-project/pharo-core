integration-private
issueCreateXML

	^ String streamContents: [ :s|
		self issueCreateXMLOn: s ].