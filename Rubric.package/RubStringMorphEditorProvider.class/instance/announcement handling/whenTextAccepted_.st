whenTextAccepted: anAnnouncement
	| sm |
	" ok, change the value of the text morph "
	stringMorph contents: anAnnouncement morph text asString.
	" keep the stringMorph because #closeEditor will set it to nil"
	sm := stringMorph.
	self closeEditor.
	" announce that the StringMorph was edited "
	self announcer announce: (RubStringMorphContentsEdited morph: sm)