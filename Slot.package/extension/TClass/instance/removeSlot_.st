removeSlot: aSlot 

	(self layout slots includes: aSlot)
		ifFalse: [self error: aSlot name , ' is not one of my slots'].
		
	^PharoClassInstaller make: [ :builder |
		builder
			superclass:  self superclass;
			name:  self name;
			layoutClass: (OldClassBuilderAdapter new layoutForType: self typeOfClass);
			slots: (self layout slots copyWithout: aSlot);
			sharedVariablesFromString: self classVariablesString;
			sharedPools: self sharedPoolsString;
			category: self category;
			environment: self environment;
			copyTraitCompositionFromExistingClass;
			copyClassSlotsFromExistingClass]
	