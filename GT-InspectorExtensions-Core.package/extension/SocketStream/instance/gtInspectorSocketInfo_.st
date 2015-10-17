gtInspectorSocketInfo: composite
	<gtInspectorPresentationOrder: 5>
	^ self socket ifNotNil: [ :aSocket | aSocket gtInspectorSocketInfo: composite ]