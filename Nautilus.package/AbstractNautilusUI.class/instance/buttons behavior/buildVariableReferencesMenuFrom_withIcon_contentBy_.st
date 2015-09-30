buildVariableReferencesMenuFrom: aMenu withIcon: aIconOrNil contentBy: aBlockOrSymbol

	self selectedClass withAllSuperclasses reverseDo: [ :class || vars |
		vars := aBlockOrSymbol value: class. 
		vars ifNotEmpty: [ 
			aMenu
			addLine;
			addMorphBack: (class printString asStringMorph color: Color gray).
		].		
		vars do: [ :name |
			aMenu 
				add: name asString
				target: [ 
					self systemNavigation browseAllReferencesTo: (class classPool associationAt: name) 
				]
				selector: #value.
			aMenu 	lastItem icon: aIconOrNil.
		]
	].

	