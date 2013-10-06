modify: aClass extend: aSuperclass withLayoutType: layoutClass slots: someSlots traitComposition: aTraitComposition compactClassIndex: compactClassIndex
	^ self new
		target: aClass;
		superclass: aSuperclass;
		traitComposition: aTraitComposition;
		layoutClass: layoutClass slots: someSlots compactClassIndex: compactClassIndex;
		yourself