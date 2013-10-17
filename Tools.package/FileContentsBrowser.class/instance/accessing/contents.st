contents
	self updateInfoView.
	(editSelection == #newClass and:[self selectedPackage notNil])
		ifTrue: [^self selectedPackage packageInfo].
	editSelection == #editClass
		ifTrue:[^self modifiedClassDefinition].
	^super contents