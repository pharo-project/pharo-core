testObsoleteBehaviors
	| obsoleteBehaviors |
	
	"Ensure the environment is clean"
	3 timesRepeat: [ Smalltalk garbageCollect ].
	
	Smalltalk fixObsoleteReferences.
	obsoleteBehaviors := SystemNavigation new obsoleteBehaviors
		select: [ :each | each isAnonymous not or: [(each isKindOf: NBExternalArray class) not ] ].
	"we skip all anonymous behaviors and classes that might be created by NB tests"
	
	self 
		assert: obsoleteBehaviors isEmpty
		description: [
			String streamContents: [ :s|
				s 
					nextPutAll: 'Obsolete behaviors remaining: ';
					print: obsoleteBehaviors ]]