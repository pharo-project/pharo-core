releaseDevelopment

	MetacelloToolBox 
		releaseDevelopmentVersionIn: (Smalltalk at: self configurationName)
		description: '- release version 1.0'.
	MetacelloToolBox 
		copyConfiguration: (Smalltalk at: self configurationName) 
		to: 'dictionary://', self alternatRepositoryName asString