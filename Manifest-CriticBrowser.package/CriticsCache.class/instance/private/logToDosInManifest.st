logToDosInManifest
	| removeFp addFp |
	toDos
		keysAndValuesDo: [ :rule :criticss | 
			| rId rV |
			rId := rule class uniqueIdentifierName.
			rV := rule class identifierMinorVersionNumber.
			removeFp := (checker toDoOf: rule) \ criticss.
			addFp := criticss \ (checker toDoOf: rule).
			(removeFp groupedBy: [ :each | self builderManifestClass of: each ])
				keysAndValuesDo: [ :manifestBuilder :value | self removeAllCriticToToDo: value forRule: rule on: manifestBuilder ].
			(addFp groupedBy: [ :each | self builderManifestClass of: each ])
				keysAndValuesDo: [ :manifestBuilder :value | 
					(manifestBuilder rejectRules includes: rule class uniqueIdentifierName)
						ifFalse: [ self addAllCriticToToDo: value forRule: rule on: manifestBuilder ] ] ]