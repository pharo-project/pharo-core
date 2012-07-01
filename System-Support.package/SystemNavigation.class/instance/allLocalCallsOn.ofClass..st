query
allLocalCallsOn: aSymbol ofClass: aClass
	"Answer a SortedCollection of all the methods that call on aSymbol, anywhere in my class hierarchy."
	
	| aSet special byte cls |
	aSet := Set new.
	cls := aClass theNonMetaClass.
	special := Smalltalk hasSpecialSelector: aSymbol
					ifTrueSetByte: [:b | byte := b ].
	cls withAllSuperAndSubclassesDo: [ :class |
		(class whichSelectorsReferTo: aSymbol special: special byte: byte)
			do: [:sel |
				aSet add: (self createMethodNamed: sel realParent: class) ]].
		
	cls class withAllSuperAndSubclassesDo: [ :class |
		(class whichSelectorsReferTo: aSymbol special: special byte: byte)
			do: [:sel |
				aSet add: (self createMethodNamed: sel realParent: class) ]].
	^aSet