moveLeft
	self recordSelectionChange: [ 
		selection end moveLeft.
		selection collapse
	].
