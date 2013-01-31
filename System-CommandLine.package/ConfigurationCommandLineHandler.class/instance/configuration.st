accessing
configuration
	self gofer
		package: self configurationName;
		load.
	^ Smalltalk globals at: self configurationName asSymbol