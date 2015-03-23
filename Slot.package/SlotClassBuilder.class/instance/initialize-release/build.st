build
	| oldClass metaChange classChange |
	result := oldClass := installer classAt: name ifAbsent: [ ^ self buildNewClass ].

	self validateSuperChain: oldClass.
	
	metaChange := ClassModification
							modify: oldClass class
							extend: self superMetaclass
							withLayoutType: FixedLayout
							slots: classSlots
							sharedVariables: #()
							sharedPools: ''
							traitComposition: classTraitComposition
							compactClassIndex: oldClass class indexIfCompact.
	
	classChange := ClassModification
							modify: oldClass
							extend: superclass
							withLayoutType: self layoutClass
							slots: slots
							sharedVariables: sharedVariables
							sharedPools: sharedPoolsString
							traitComposition: traitComposition
							compactClassIndex: oldClass indexIfCompact.

	self apply: metaChange.
	self apply: classChange.

	comment ifNotNil: [result classComment: comment stamp: commentStamp].

	result instanceSide 
		declareClassVariables: sharedVariables;
		sharing: sharedPoolsString.

	result isMeta ifFalse: [
		installer recategorize: result to: category ].
	
	"call all slots and allow them to modify the class"
	classChange additions do: [ :each | each installingIn: result].
	classChange removals do: [ :each | each removingFrom: result].
	
	^ result instanceSide