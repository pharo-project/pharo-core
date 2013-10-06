currentVersionsToBeSaved
	"self new currentVersionsToBeSaved"
	
	^ self allCurrentVersions reject: [ :each |
		self packagesNotToSavePatternNames
			anySatisfy: [ :p | p match: each ] ]