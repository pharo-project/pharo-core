gtInspectorCodeIn: composite
	<gtInspectorPresentationOrder: 40>
	composite pharoPlayground 
		title: 'Code';
		display: [ 
			String streamContents: [ :s | self configMethodOn: s indent: 0] ]
