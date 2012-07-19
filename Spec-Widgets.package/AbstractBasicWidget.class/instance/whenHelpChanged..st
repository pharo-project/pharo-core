protocol-events
whenHelpChanged: aBlock
	<api: #event>
	"Set a block to be performed when the help changed"
	
	helpHolder whenChangedDo: aBlock