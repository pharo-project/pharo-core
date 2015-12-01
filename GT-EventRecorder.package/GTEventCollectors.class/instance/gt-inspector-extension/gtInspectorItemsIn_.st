gtInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 1>
	^ collectors ifNotNil: [ 
			(collectors gtInspectorItemsIn: composite)
				title: 'Collectors';
				display: [ collectors asOrderedCollection ] ]