listWrapper2: anElement

	"anElement is a Class"
	^ self showHierarchy
			ifTrue: [ self buildTabbedNameOf: anElement ]
			ifFalse: [
				 self selectedPackage 
						ifNil: [anElement name]
						ifNotNil: [:package | 
							( anElement package = package)
								ifTrue: [ anElement name asStringMorph ]
								ifFalse: [ anElement name asStringMorph color: self extensionColor;yourself]]]