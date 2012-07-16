protocol-focus
isEventForPreviousFocus: aKeyboardEvent 
	"Return true if the event provided as argument corresponds to the shortcut used to switch to the previous sub-widget"
	
	^ self isEventForPreviousFocusBlock cull: aKeyboardEvent