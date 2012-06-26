morphic ui
versionSelection: aNumber
	aNumber isZero 
		ifTrue: [ selectedVersion := nil ]
		ifFalse: [ 
			selectedVersion := versions at: aNumber].
	self changed: #versionSelection; changed: #summary