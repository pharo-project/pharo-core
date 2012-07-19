protocol-events
whenLabelChanged: aBlock
	"A block performed when the label changed"
	<api: #event>
	
	labelHolder whenChangedDo:  aBlock 