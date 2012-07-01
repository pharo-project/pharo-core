query
allCallsOn: aSymbol localTo: aClass
	"Answer a Set of RGMethodDefinition for all the methods
	 that call on aSymbol in, above or below the given class."

	| aSet special byte enum |
	aSet := Set new.
	special := Smalltalk hasSpecialSelector: aSymbol ifTrueSetByte: [:b | byte := b].
	enum := [:behavior|
			(behavior whichSelectorsReferTo: aSymbol special: special byte: byte) do:
				[:sel | aSet add: (RGMethodDefinition realClass: behavior  selector: sel)]].
	aClass theNonMetaClass withAllSuperAndSubclassesDo: enum.
		aClass theNonMetaClass class withAllSuperAndSubclassesDo: enum.
	^aSet