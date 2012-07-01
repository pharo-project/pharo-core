*PackageInfo
allMethodsSelect: aBlock localToPackage: packageNameOrInfo
	"Answer a SortedCollection of each method in the given package
	 for which the evaluation of aBlock with the metnod answers true."

	| aSet |
	aSet := Set new.
	Cursor wait showWhile:
		[(self packageInfoFor: packageNameOrInfo) actualMethodsDo:
			[:aMethod |
			(aBlock value: aMethod) ifTrue:
				[aSet add: aMethod methodReference]]].
	^aSet