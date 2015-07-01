removeSlot: aSlot 

	(self layout slots includes: aSlot)
		ifFalse: [self error: aSlot name , ' is not one of my slots'].
		
	^self classInstaller make: [ :builder |
		builder
			superclass:  self superclass;
			name:  self name;
			layoutClass: (ObjectLayout layoutForType: self typeOfClass);
			slots: (self layout slots copyWithout: aSlot);
			classSlots: self class layout slots;
			sharedVariablesFromString: self classVariablesString;
			sharedPools: self sharedPoolsString;
			category: self category;
			environment: self environment]
	