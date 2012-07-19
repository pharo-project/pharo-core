protocol-events
whenChangedDo: aBlock
	<api: #event>
	"This method is used to propagate the event that I have changed"
	
	stateHolder whenChangedDo: aBlock