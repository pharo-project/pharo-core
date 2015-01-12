createClass
	| superClass class composition slots classSlots|
	superClass := superclassName == #nil ifFalse:
						[ Smalltalk globals at: superclassName ].
	self hasComplexVariables 
		ifTrue: [
			slots := self instanceVariables.
			classSlots := self classInstanceVariables]
		ifFalse: [
			slots := self instanceVariablesString asSlotCollection.
			classSlots := self classInstanceVariablesString asSlotCollection].
	[ class := PharoClassInstaller make: [ :builder | 
		builder
			superclass: superClass;
			name: name;
			layoutClass: (superClass classBuilder layoutForType: type);
			slots: slots;
			sharedVariablesFromString: self classVariablesString;
			sharedPools: self sharedPoolsString;
			classSlots: classSlots;
			category: category;
			environment:  superClass environment.
			 ]] on: Warning, DuplicatedVariableError do: [:ex| ex resume].
	
	composition := class compiler evaluate: self traitCompositionString.
	class setTraitComposition: composition asTraitComposition.
	composition := class compiler evaluate: self classTraitCompositionString.
	class class setTraitComposition: composition asTraitComposition.
	^ class