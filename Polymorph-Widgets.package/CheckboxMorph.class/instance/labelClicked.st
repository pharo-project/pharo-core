event handling
labelClicked

	labelClickable ifTrue: [ self toggleSelected ].
	
	self announcer announce: (LabelClicked source: self stateChanged: labelClickable).