newClassNamed: aString subclassOf: aClass instanceVariableNames: ivNamesString classVariableNames:  classVarsString category: category
	| newClass |
	newClass := PharoClassInstaller make: [ :builder |
		builder
			superclass: aClass;
			name: aString;
			layoutClass: (ObjectLayout layoutForType: aClass typeOfClass);
			slots: ivNamesString asSlotCollection;
			sharedVariablesFromString: classVarsString;
			sharedPools: '';
			category: category asSymbol;
			environment: self organization environment;
			copyTraitCompositionFromExistingClass;
			copyClassSlotsFromExistingClass ].		
	self createdClasses add: newClass.
	^newClass