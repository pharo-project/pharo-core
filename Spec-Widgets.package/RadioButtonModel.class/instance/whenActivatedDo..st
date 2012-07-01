protocol-events
whenActivatedDo: aBlock
	"This method is used to propagate the event that I have been activated" 
	
	self stateHolder whenChangedDo: [:bool | bool ifTrue: aBlock ]