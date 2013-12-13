build
	| oldClass metaChange classChange |
	result := oldClass := client classAt: name ifAbsent: [ ^ self buildNewClass ].

	self validateSuperChain: oldClass.
	
	metaChange := ClassModification
							modify: oldClass class
							extend: self superMetaclass
							withLayoutType: FixedLayout
							slots: classSlots
							traitComposition: classTraitComposition
							compactClassIndex: oldClass class indexIfCompact.
	
	classChange := ClassModification
							modify: oldClass
							extend: superclass
							withLayoutType: layoutClass
							slots: slots
							traitComposition: traitComposition
							compactClassIndex: oldClass indexIfCompact.
	
	self apply: metaChange.
	self apply: classChange.

	result instanceSide 
		declare: sharedVariablesString;
		sharing: sharedPoolsString.

	result isMeta ifFalse: [
		client recategorize: result to: category ].
	
	^ result instanceSide