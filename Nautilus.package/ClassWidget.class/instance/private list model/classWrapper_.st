classWrapper: anElement
	^ self model showHierarchy
			ifTrue: [ self model buildTabbedNameOf: anElement ]
			ifFalse: [
				 self model selectedPackage 
						ifNil: [anElement name]
						ifNotNil: [ :package | 
							(package includesClass: anElement)
								ifTrue: [ anElement name asStringMorph ]
								ifFalse: [ anElement name asStringMorph color: self model extensionColor;yourself]]]