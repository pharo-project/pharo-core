source code area
okToChangeBoth

	self canDiscardEdits ifTrue: [^ true].
	self changed: #wantToChange.  "Solicit cancel from view"
	^ self canDiscardEdits
