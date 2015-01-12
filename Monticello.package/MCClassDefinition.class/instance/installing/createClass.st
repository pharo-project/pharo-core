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
			copyClassSlotsFromExistingClass ]] on: Warning, DuplicatedVariableError do: [:ex| ex resume].
	self traitComposition
		ifNotNil: [ composition := class compiler evaluate: self traitComposition.
						class setTraitComposition: composition asTraitComposition].
	self classTraitComposition
		ifNotNil: [ composition := class compiler evaluate: self classTraitComposition.
						class class setTraitComposition: composition asTraitComposition].
	^ class