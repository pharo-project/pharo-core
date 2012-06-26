*PackageInfo
allImplementorsOf: aSelector  localToPackage: packageNameOrInfo
	"Answer a SortedCollection of all the methods that implement the message 
	 aSelector in the given package."

	| aSet |
	aSet := Set new.
	Cursor wait showWhile:
		[(self packageInfoFor: packageNameOrInfo) actualMethodsDo:
			[:m |
			(m selector = aSelector) ifTrue:
				[aSet add: m methodReference]]].
	^aSet