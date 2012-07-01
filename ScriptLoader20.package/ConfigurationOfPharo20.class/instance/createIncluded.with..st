private creating
createIncluded: versionString with: nameString 
	^String streamContents: [ :stream | 
		stream 
			<< String tab << String tab 
			<< ('self version{1}{2}: spec' format: {
				self versionForMethodName: versionString. 
				nameString})]