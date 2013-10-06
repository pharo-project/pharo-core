isEditable: evt
	"If the shift key is pressed then yes.
	As normal if StringMorph class>> editableStringMorph  returns false."
	
	^(self class editableStringMorph and: [evt shiftPressed and: [self wantsKeyboardFocusOnShiftClick]])
