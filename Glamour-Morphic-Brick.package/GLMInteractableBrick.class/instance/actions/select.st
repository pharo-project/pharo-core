select
	self isSelected ifFalse: [ 
		isSelected := true.
		self changed.
	]