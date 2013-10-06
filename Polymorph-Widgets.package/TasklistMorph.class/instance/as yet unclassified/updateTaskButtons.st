updateTaskButtons
	"Make buttons for the ordered tasks."
	
	
	self taskList removeAllMorphs.
	self tasks do: [:t | | button |
		button := t tasklistButtonFor: self.
		button ifNotNil: [self taskList addMorphBack: button]]