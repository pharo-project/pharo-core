protocol-events
whenLabelChangedDo: aBlock
	<api: #event>
	"Block performed when the label changed"

	labelHolder whenChangedDo: aBlock