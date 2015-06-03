newSubclassOf: aClass instanceVariableNames: ivNamesString classVariableNames: classVarsString category: category
	| newClass |
	newClass := aClass classInstaller
		make: [ :builder | 
			builder
				superclass: aClass;
				name: self newClassName;
				layoutClass: (ObjectLayout layoutForType: aClass typeOfClass);
				slots: ivNamesString asSlotCollection;
				sharedVariablesFromString: classVarsString;
				sharedPools: '';
				category: category asSymbol;
				environment: self organization environment ].
	self createdClasses add: newClass.
	^ newClass