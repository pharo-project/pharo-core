browseVariableReferences
	| selectedClass menu |
	selectedClass := self selectedClass.
	selectedClass ifNil: [ ^ self ].
	menu := MenuMorph new.
	selectedClass withAllSuperclasses
		reverseDo:
			[ :class | 
			| vars |
			vars := class classVarNames.
			vars
				do:
					[ :n | 
					menu
						add: n asString
						target:
							[ self systemNavigation browseAllReferencesTo: (class classPool associationAt: n) ]
						selector: #value.
					menu lastItem icon: Smalltalk ui icons classIcon ].
			menu addLine ].
	menu addLine.
	selectedClass withAllSuperclasses
		reverseDo:
			[ :class | 
			| vars |
			vars := class instVarNames.
			vars
				do:
					[ :n | 
					menu
						add: n asString
						target: [ self systemNavigation browseAllAccessesTo: n from: selectedClass ]
						selector: #value ].
			menu addLine ].
	menu popUpInWorld