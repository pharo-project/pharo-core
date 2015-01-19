createClass
	| superClass class slots classSlots classVars|
	superClass := superclassName == #nil ifFalse:
						[ Smalltalk globals at: superclassName ].
	self hasComplexVariables 
		ifTrue: [
			slots := self instanceVariables.
			classSlots := self classInstanceVariables.
			classVars := self classVariables. ]
		ifFalse: [
			slots := self instanceVariablesString asSlotCollection.
			classSlots := self classInstanceVariablesString asSlotCollection.
			classVars := (self classVariablesString subStrings: ' ') collect: [:x | x asSymbol => ClassVariable]].
	[ class := PharoClassInstaller make: [ :builder | 
		builder
			superclass: superClass;
			name: name;
			layoutClass: (superClass classBuilder layoutForType: type);
			slots: slots;
			sharedVariables: classVars;
			sharedPools: self sharedPoolsString;
			classSlots: classSlots;
			category: category;
			environment:  superClass environment.
			 ]] on: Warning, DuplicatedVariableError do: [:ex| ex resume].
	
	class setTraitComposition: self traitCompositionCompiled.
	class class setTraitComposition: self classTraitCompositionCompiled.
	^ class