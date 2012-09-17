source code area
compileAClassFrom: aString notifying: aController

	sourceTextArea update: #clearUserEdits.
	( self compileANewClassFrom: aString notifying: aController startingFrom: self selectedClass )
		ifNil: [^ sourceTextArea hasUnacceptedEdits: true. ]
		ifNotNil: [:class | 
			self selectedPackage: class packageWrapper.
			self selectedClass: class.
			self showHierarchy
						ifTrue: [ self hierarchyClass: class ].
			self showGroups
				ifTrue: [ self updateClassView ]
				ifFalse: [ self updateBothView ]]