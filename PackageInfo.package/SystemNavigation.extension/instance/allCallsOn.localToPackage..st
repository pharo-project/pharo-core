*PackageInfo
allCallsOn: aLiteral localToPackage: packageNameOrInfo
	"Answer a Set of MethodReferences for all the methods
	 that call on aSymbol in the given package."

	| aSet special byte |
	aSet := Set new.
	special := Smalltalk hasSpecialSelector: aLiteral ifTrueSetByte: [:b | byte := b].
	Cursor wait showWhile:
		[(self packageInfoFor: packageNameOrInfo) actualMethodsDo:
			[:method |
			((method hasLiteral: aLiteral) or: [special and: [method scanFor: byte]]) ifTrue:
				[((aLiteral isVariableBinding) not
					or: [method literals allButLast includes: aLiteral])
						ifTrue: [aSet add: method methodReference]]].].
	^aSet