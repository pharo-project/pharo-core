project

	^ project ifNil: [ | constructor |
		"Bootstrap Metacello if it is not already loaded"
		self class ensureMetacello.
		"Construct Metacello project"
		constructor := (Smalltalk at: #MetacelloVersionConstructor) on: self.
		project := constructor project.
		project loadType: #linear.
		"use atomic load on GemStone to resolve some loading issues"
		Smalltalk at: #SystemVersion ifAbsent: [ project loadType: #atomic ]. 
		project ]