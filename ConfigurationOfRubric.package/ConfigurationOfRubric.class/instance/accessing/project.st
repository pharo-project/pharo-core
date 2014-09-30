project

	^ project ifNil: [ | constructor |
		"Bootstrap Metacello if it is not already loaded"
		self class ensureMetacello.
		"Construct Metacello project"
		constructor := (Smalltalk globals at: #MetacelloVersionConstructor) on: self.
		project := constructor project.
		project]