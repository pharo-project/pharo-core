visitArrayNode: anArrayNode
	| array |
	
	array := Array new: anArrayNode statements size.
	anArrayNode statements doWithIndex: [ :statement :i|
		array at: i put: (self interpret: statement)].
	
	self updateGotoContext.
		
	^ array