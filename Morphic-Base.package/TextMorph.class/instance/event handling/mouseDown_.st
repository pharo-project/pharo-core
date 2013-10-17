mouseDown: evt 
	"Make this TextMorph be the keyboard input focus, if it isn't  
	already, and repond to the text selection gesture.
	Changed to not take keyboard focus if an owner is a
	PluggableTextMorph that doesn't want focus."
	
	evt yellowButtonPressed
		ifTrue: ["First check for option (menu) click"
			(self yellowButtonActivity: evt shiftPressed) 
				ifTrue: [ ^ self ]].
	self handleInteraction: [editor mouseDown: evt].
	self hasKeyboardFocus
		ifFalse: [(self ownerThatIsA: PluggableTextMorph)
					ifNil: [self takeKeyboardFocus]
					ifNotNil: [:ptm | ptm wantsKeyboardFocus ifTrue: [
							self takeKeyboardFocus]]].
	super mouseDown: evt