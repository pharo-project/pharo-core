addSlot: aSlot
	^PharoClassInstaller make: [ :builder |
		builder
			superclass: self superclass;
			name: self name;
			layoutClass: (ObjectLayout layoutForType: self typeOfClass);
			slots: (self slots copyWith: aSlot);
			classSlots: self class layout slots;
			sharedVariablesFromString: self classVariablesString;
			sharedPools: self sharedPoolsString;
			category: self category;
			environment: self environment;
			copyTraitCompositionFromExistingClass].