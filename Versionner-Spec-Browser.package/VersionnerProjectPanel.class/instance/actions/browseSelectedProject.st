browseSelectedProject
	^ self projectBoundToSelection
		ifNotNilDo: [ :dependantProject | 
			self browseProject: dependantProject configurationClass ]