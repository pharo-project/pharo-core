*Polymorph-Widgets
mouseDown: evt
	"If the shift key is pressed, make this string the keyboard input focus.
	Process as normal if StringMorph class>> editableStringMorph  returns false."

	(self isEditable: evt)
		ifTrue: [self launchMiniEditor: evt]
		ifFalse: [super mouseDown: evt].
