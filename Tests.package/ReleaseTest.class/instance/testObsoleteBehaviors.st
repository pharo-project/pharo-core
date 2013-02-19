testing
testObsoleteBehaviors
	| obsoleteBehaviors |
	
	Smalltalk fixObsoleteReferences.
	obsoleteBehaviors := SystemNavigation new obsoleteBehaviors.
	
	self 
		assert: obsoleteBehaviors isEmpty
		description: [
			String streamContents: [ :s|
				s 
					nextPutAll: 'Obsolete behaviors remaining: ';
					print: obsoleteBehaviors ]]