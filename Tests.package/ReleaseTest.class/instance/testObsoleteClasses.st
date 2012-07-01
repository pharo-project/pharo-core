testing
testObsoleteClasses
	Smalltalk fixObsoleteReferences.
	self 
		assert: SystemNavigation default obsoleteClasses isEmpty
		description: 'Obsolete classes remaining: ', SystemNavigation default obsoleteClasses asString.