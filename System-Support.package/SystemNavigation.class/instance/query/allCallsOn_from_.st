allCallsOn: aSymbol from: aClass
	"Answer a SortedCollection of all the methods that call on aSymbol."

	| collection special byte |
	collection := OrderedCollection  new.
	special := Smalltalk hasSpecialSelector: aSymbol ifTrueSetByte: [:b | byte := b ].
	aClass withAllSubclassesDo: [ :class |
		(class whichSelectorsReferTo: aSymbol special: special byte: byte) do: [:sel |
				collection add: (self createMethodNamed: sel realParent: class)]].
	^collection