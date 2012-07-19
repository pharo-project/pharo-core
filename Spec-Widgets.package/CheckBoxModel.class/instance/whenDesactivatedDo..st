protocol-events
whenDesactivatedDo: aBlock
	<api: #event>
	"This method is used to propagate the event that I have been desactivated"
	
	stateHolder whenChangedDo: [:bool | bool ifFalse: aBlock ]