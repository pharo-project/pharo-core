select
	self isSelected ifFalse: [ 
		isSelected := true.
		self announcer announce: (GLMPagerButtonSelected new buttonModel: self).
	]