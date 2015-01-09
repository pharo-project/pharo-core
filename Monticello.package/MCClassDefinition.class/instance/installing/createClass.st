createClass
	| superClass class composition slots|
	superClass := superclassName == #nil ifFalse:
						[ Smalltalk globals at: superclassName ].
	self hasComplexVariables 
		ifTrue: [slots := self instanceVariables]
		ifFalse: [slots := self instanceVariablesString asSlotCollection].
	[ class := PharoClassInstaller make: [ :builder | 
		builder
			superclass: superClass;
			name: name;
			layoutClass: (superClass classBuilder layoutForType: type);
			slots: slots;
			sharedVariablesFromString: self classVariablesString;
			sharedPools: self sharedPoolsString;
			category: category;
			environment:  superClass environment;
			copyTraitCompositionFromExistingClass;
			copyClassSlotsFromExistingClass ]] on: Warning, DuplicatedVariableError do: [:ex| ex resume].
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