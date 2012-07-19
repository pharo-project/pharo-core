protocol-events
whenAbsoluteValueChangedDo: aBlock
	<api: #event>
	"Block performed when the absolute value changed"

	absoluteValue whenChangedDo: aBlock