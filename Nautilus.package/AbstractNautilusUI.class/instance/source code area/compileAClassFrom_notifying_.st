compileAClassFrom: aString notifying: aController

	sourceTextArea update: #clearUserEdits.
	( self compileANewClassFrom: aString notifying: aController startingFrom: self selectedClass )
		ifNil: [^ sourceTextArea hasUnacceptedEdits: true. ]
		ifNotNil: [:class | 
			self selectedPackage: (self parentOfClass: class).
			self selectedClass: class.
			self showGroups
				ifTrue: [ self updateClassView ]
				ifFalse: [ self updatePackageGroupAndClassList ]]