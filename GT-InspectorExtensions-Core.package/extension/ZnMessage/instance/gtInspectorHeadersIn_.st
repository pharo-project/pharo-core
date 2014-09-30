gtInspectorHeadersIn: composite 
	<gtInspectorPresentationOrder: 30>
	^ (self headers headers gtInspectorItemsIn: composite) 
		display: [:anObject | self headers headers associations ];
		title: [:anObject | self headers headers size asString , ' header items' ]