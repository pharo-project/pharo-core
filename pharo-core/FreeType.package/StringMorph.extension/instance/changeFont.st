*FreeType-override
changeFont
	| newFont chooser|
	"newFont := StrikeFont fromUser: self fontToUse."
	chooser := self openModal: (
		Cursor wait showWhile: [FontChooser 
			windowTitle: 'Choose a Font' 
			for: self 
			setSelector: #font: 
			getSelector: self fontToUse]).
	newFont := chooser result.
	newFont ifNotNil:[self font: newFont].