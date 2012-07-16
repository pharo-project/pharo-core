integration-private
statusUpdateXML: aMessage
	^ String streamContents: [ :s|
		self statusUpdateXML: aMessage on: s ].