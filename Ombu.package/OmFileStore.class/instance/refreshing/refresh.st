refresh

	self initialize.
	
	self entriesAndPositionsDo: [ :entry :position |
		headReference := self referenceTo: entry.

		entryPositionsByLocalName 
			at: headReference localName
			put: position ].
		
	entryCount := entryPositionsByLocalName size.