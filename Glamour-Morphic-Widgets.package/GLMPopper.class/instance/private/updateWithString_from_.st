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
			aMorph takeKeyboardFocus ]