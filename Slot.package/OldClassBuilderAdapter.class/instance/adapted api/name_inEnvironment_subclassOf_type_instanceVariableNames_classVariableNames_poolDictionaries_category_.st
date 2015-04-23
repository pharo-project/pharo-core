name: name inEnvironment: environment subclassOf: superClass type: type instanceVariableNames: instanceVariablesString classVariableNames: classVariablesString poolDictionaries: sharedPoolsString category: category
	"Define a new class in the given environment"
	^ PharoClassInstaller make: [ :builder |
		builder
			superclass: superClass;
			name: name;
			layoutClass: (ObjectLayout layoutForType: type);
			slots: instanceVariablesString asSlotCollection;
			sharedVariablesFromString: classVariablesString;
			sharedPools: sharedPoolsString;
			category: category;
			environment: environment;
			copyTraitCompositionFromExistingClass;
			copyClassSlotsFromExistingClass ].
