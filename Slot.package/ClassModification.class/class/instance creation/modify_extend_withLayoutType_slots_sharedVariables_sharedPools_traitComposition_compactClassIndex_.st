modify: aClass extend: aSuperclass withLayoutType: layoutClass slots: someSlots sharedVariables: someClassVariables sharedPools: someSharedPools traitComposition: aTraitComposition compactClassIndex: compactClassIndex
	^ self new
		target: aClass;
		superclass: aSuperclass;
		traitComposition: aTraitComposition;
		classVariables: someClassVariables;
		sharedPools: someSharedPools;
		layoutClass: layoutClass slots: someSlots compactClassIndex: compactClassIndex;
		yourself