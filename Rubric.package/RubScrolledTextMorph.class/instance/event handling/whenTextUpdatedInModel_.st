whenTextUpdatedInModel: anAnnouncement
	self announcer announce: anAnnouncement.
	self updateTextWith: self getTextFromModel.
	"self setSelection: self getSelection."

