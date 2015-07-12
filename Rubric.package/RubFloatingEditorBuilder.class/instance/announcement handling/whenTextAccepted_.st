whenTextAccepted: anAnnouncement
	self
		editorDo: [ :ed | 
			self closeEditor.
			self announcer
				announce:
					((RubMorphEdited morph: ed)
						previousContents: initialContents;
						yourself) ]