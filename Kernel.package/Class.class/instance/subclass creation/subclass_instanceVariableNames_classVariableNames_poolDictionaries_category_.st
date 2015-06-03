subclass: t instanceVariableNames: f classVariableNames: d poolDictionaries: s category: cat 
	"This is the standard initialization message for creating a new class as a 
	subclass of an existing class (the receiver)."
	^ self classInstaller make: [ :builder |
		builder
			superclass: self;
			name: t;
			layoutClass: (ObjectLayout layoutForType: self typeOfClass);
			slots: f asSlotCollection;
			sharedVariablesFromString: d;
			sharedPools: s;
			category: cat;
			environment: self environment;
			copyTraitCompositionFromExistingClass;
			copyClassSlotsFromExistingClass ].
