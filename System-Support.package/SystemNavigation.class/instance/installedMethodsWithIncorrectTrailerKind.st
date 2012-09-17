query
installedMethodsWithIncorrectTrailerKind

	^self allSelect:
		[:each | (#(#SourcePointer #VarLengthSourcePointer) includes: each trailer kind) not and: [ each isInstalled ]  ]