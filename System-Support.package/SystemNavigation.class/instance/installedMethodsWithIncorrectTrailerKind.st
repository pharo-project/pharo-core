query
installedMethodsWithIncorrectTrailerKind

	^self allSelect:
		[:each | (#(#SourcePointer #VarLengthSourcePointer #NativeCodeTrailer) includes: each trailer kind) not and: [ each isInstalled ]  ]