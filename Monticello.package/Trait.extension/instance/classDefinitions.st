*Monticello
classDefinitions
	| definitions |
	definitions := OrderedCollection with: self asClassDefinition.
	(self hasClassTrait
		and: [self classTrait hasTraitComposition])
					ifTrue: [definitions add: self classTrait asMCDefinition].
	^definitions asArray