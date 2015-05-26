addSlot: aSlot
	^PharoClassInstaller make: [ :builder |
		builder
			superclass: self superclass;
			name: self name;
			layoutClass: (OldClassBuilderAdapter new layoutForType: self typeOfClass);
			slots: (self slots copyWith: aSlot);
			sharedVariablesFromString: self classVariablesString;
			sharedPools: self sharedPoolsString;
			category: self category;
			environment: self environment;
			copyTraitCompositionFromExistingClass;
			copyClassSlotsFromExistingClass ].