testing
testObsoleteClasses
	| obsoleteClasses |
	
	Smalltalk fixObsoleteReferences.
	obsoleteClasses := SystemNavigation new obsoleteClasses.
	
	self 
		assert: obsoleteClasses isEmpty
		description: [
			String streamContents: [ :s|
				s 
					nextPutAll: 'Obsolete classes remaining: ';
					print: obsoleteClasses ]]