updateWithString: string from: aMorph
	textMorph
		updateTextWith: string;
		takeKeyboardFocus;
		on: Character escape do: [ 
			self delete.
			aMorph takeKeyboardFocus ];
		on: Character backspace do: [ 
			self delete.
			aMorph takeKeyboardFocus ];
		onAnnouncement: MorphLostFocus do: [ :ann | 
			self delete.
			"If this event is triggered then another morph already has the focus.
			Do not attempt to give the focus back to the original morph" ]