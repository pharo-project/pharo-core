modify: aClass extend: aSuperclass withLayoutType: layoutClass slots: someSlots sharedVariables: someSharedVariables sharedPools: someSharedPools traitComposition: aTraitComposition compactClassIndex: compactClassIndex
	^ self new
		target: aClass;
		superclass: aSuperclass;
		traitComposition: aTraitComposition;
		sharedVariables: someSharedVariables;
		sharedPools: someSharedPools;
		layoutClass: layoutClass slots: someSlots compactClassIndex: compactClassIndex;
		yourself