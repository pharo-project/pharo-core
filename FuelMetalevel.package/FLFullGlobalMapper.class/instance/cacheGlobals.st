initialize-release
cacheGlobals

	Smalltalk globals associationsDo: [:each | 
		(internalBehaviors includes: each value)
			ifFalse: [
				each value isBehavior 
					ifTrue: [ self cacheClassAssociation: each ].
				each value isTrait
					ifTrue: [ self cacheTraitAssociation: each ]].
		(globalSymbols includes: each key) 
			ifTrue: [
				self cacheGlobalAssociation: each ]].