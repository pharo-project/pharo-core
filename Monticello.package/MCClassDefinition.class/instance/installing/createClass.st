createClass
	| superClass class composition |
	superClass := superclassName == #nil ifFalse:
						[ Smalltalk globals at: superclassName ].
	[ class := superClass classBuilder
		name: name
		inEnvironment: superClass environment
		subclassOf: superClass
		type: type
		instanceVariableNames: self instanceVariablesString
		classVariableNames: self classVariablesString
		poolDictionaries: self sharedPoolsString
		category: category.] on: Warning, DuplicatedVariableError do: [:ex| ex resume].

	self traitComposition
		ifNotNil: [ composition := class compiler evaluate: self traitComposition.
				  ((((composition isCollection and: [ ( composition includes: nil ) not])  
					or: [composition isKindOf: TraitComposition ])
						or: [composition isKindOf: Trait ])
							or: [composition isKindOf: TraitTransformation ])
					ifTrue: [ class setTraitComposition: composition asTraitComposition ] ].
	self classTraitComposition
		ifNotNil: [ composition := class compiler evaluate: self classTraitComposition.
				  ((((composition isCollection and: [ ( composition includes: nil ) not])  
					or: [composition isKindOf: TraitComposition ])
						or: [composition isKindOf: Trait ])
							or: [composition isKindOf: TraitTransformation ])
					ifTrue: [ class class setTraitComposition: composition asTraitComposition ] ].
	^ class