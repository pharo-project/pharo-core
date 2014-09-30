mouseUp: evt
	self buttonModel depress.
	(bounds containsPoint: evt position)
		ifFalse: [ self buttonModel deselect ] 