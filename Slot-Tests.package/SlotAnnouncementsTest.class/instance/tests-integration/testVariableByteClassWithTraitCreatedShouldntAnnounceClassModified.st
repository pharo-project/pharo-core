testVariableByteClassWithTraitCreatedShouldntAnnounceClassModified

	self subscribeOn: ClassModifiedClassDefinition.	

	"Create a class with a trait composition"
	aClass := Object 
		variableByteSubclass: self aClassName
		uses: TOne 
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self aCategory.

	self assert: self collectedAnnouncements size isZero.
	self assert: aClass layout isVariable.
	self assert: aClass layout isBits.
	self assert: aClass layout isBytes.
	self assert: (aClass traitComposition syntacticallyEquals: TOne asTraitComposition).