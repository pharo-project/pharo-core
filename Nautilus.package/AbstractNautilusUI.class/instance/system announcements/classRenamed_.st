classRenamed: anAnnouncement
	| class |
	class := anAnnouncement classRenamed.
	window ifNil: [ ^ self ].
	window isDisplayed
		ifFalse: [ ^ self ].
	(self classWidget getClassesList includes: class)
		ifTrue:
			[ 
			self updateClassView.
			self sourceTextModel hasUnacceptedEdits
				ifFalse: [ self updateSourceCodeAreaWith: self sourceCode ] ]