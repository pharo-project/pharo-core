query
allReferencesTo: aLiteral 
	"Answer a Collection of all the methods that refer to aLiteral even deeply embedded in literal array."

	"SystemNavigation new allReferencesTo: #+"
	"SystemNavigation new allReferencesTo: Point binding"
	
	| result special byte symbol |
	result := OrderedCollection new.
	special := Smalltalk
		hasSpecialSelector: aLiteral
		ifTrueSetByte: [ :value | byte := value ].
	symbol := aLiteral isSymbol.
	self allBehaviorsDo: [ :class |
		| selectors |
		selectors := symbol
			ifFalse: [ class whichSelectorsReferTo: aLiteral special: special byte: byte ]
			ifTrue: [ class thoroughWhichSelectorsReferTo: aLiteral special: special byte: byte ].
		selectors do: [ :selector |
			result addLast: (self createMethodNamed: selector realParent: class) ] ].
	^ result