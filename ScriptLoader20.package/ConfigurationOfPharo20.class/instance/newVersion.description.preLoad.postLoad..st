generating
newVersion: versionString description: descriptionString preLoad: preLoadString postLoad: postLoadString
	^self 
		newVersion: versionString 
		description: descriptionString
		preLoad: preLoadString 
		postLoad: postLoadString 
		fromBaseline: (self calculateBaselineForVersion: versionString) 