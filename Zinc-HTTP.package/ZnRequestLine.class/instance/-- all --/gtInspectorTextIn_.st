gtInspectorTextIn: composite
	<gtInspectorPresentationOrder: 30>
	^ composite rubricText
		title: 'HTTP';
		format: [ String streamContents: [ :out | self writeOn: out ] ]