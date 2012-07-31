protocol-events
whenGhostTextChanged: aBlock
	<api: #event>
	"aBlock will be performed when ghostText changed"
	
	ghostText whenChangedDo: aBlock