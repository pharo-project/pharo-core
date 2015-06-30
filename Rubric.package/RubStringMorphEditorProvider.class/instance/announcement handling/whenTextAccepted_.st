whenTextAccepted: anAnnouncement
	| sm previousContents |
	"Ok, change the value of the text morph "
	previousContents := stringMorph contents copy.
	stringMorph contents: anAnnouncement morph text asString.	
	"Keep the stringMorph because #closeEditor will set it to nil"
	sm := stringMorph.
	self closeEditor.	
	"Announce that the StringMorph was edited "
	"The previous contents is passed so that the announce handler can rollback the change"
	self announcer
		announce:
			((RubStringMorphContentsEdited morph: sm)
				previousContents: previousContents;
				yourself)