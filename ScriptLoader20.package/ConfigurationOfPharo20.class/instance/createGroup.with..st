private creating
createGroup: nameString with: aCollection
	^String streamContents: [ :stream | 
		stream
			<< String tab << String tab
			<< 'spec group: ' << $' << nameString << $'
			<< ' with: ' << (self collectionToString: aCollection) ] 