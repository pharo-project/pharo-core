testing
testObsoleteClasses
	Smalltalk fixObsoleteReferences.
	self 
		assert: SystemNavigation new obsoleteClasses isEmpty
		description: 'Obsolete classes remaining: ', SystemNavigation new obsoleteClasses asString.