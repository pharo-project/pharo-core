handlesMouseOver: evt
	"Answer whether we can handle the event."
	
	mouseOverRecipient ifNotNil: [^ true].
	^super handlesMouseOver: evt