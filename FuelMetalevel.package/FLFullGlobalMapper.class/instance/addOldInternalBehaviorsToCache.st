resetting
addOldInternalBehaviorsToCache

	"Old internals should now be considered as globals. Therefore, we need to cache them."
	(internalBehaviors collect: [:each | each binding ]) do: [:each |  
		each value isBehavior 
			ifTrue: [  self cacheClassAssociation: each].
		each value isTrait
			ifTrue: [ self cacheTraitAssociation: each].
	].
			