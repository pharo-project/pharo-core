whenReturnEntered: anAnnouncement
	acceptOnCR
		ifTrue: [ anAnnouncement accepted: true ].
	autoAccept
		ifTrue:
			[ | tmp2 |
			tmp2 := RubMorphEdited morph: editor.
			tmp2 previousContents: initialContents.
			self announcer announce: tmp2 yourself.
			self closeEditor ]