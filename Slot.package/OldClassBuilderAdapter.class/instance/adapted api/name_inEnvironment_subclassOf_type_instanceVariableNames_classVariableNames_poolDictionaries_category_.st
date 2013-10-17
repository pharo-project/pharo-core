name: name inEnvironment: environment subclassOf: superClass type: type instanceVariableNames: instanceVariablesString classVariableNames: classVariablesString poolDictionaries: sharedPoolsString category: category
	"Define a new class in the given environment"
	^ self slotClassInstaller make: [ :builder |
		builder
			superclass: superClass;
			name: name;
			layoutClass: (self layoutForType: type);
			slots: instanceVariablesString asSlotCollection;
			sharedVariables: classVariablesString;
			sharedPools: sharedPoolsString;
			category: category;
			environment: environment;
			copyTraitCompositionFromExistingClass;
			copyClassSlotsFromExistingClass ].
