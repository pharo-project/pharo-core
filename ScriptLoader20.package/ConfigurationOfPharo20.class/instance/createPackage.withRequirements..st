private creating
createPackage: nameString withRequirements: aCollection
	^String streamContents: [ :stream | 
		stream 
			<< String tab << String tab << String tab
			<< 'package: ' << $' << nameString << $'.
		aCollection isEmptyOrNil 
			ifFalse: [ 
				stream 
					<< ' with: [ spec requires: ' 
					<< (self collectionToString: aCollection) 
					<< ' ]' ]  ]