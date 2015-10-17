gtInspectorGTExamplesIn: composite
	<gtInspectorPresentationOrder: 40>
	composite list 
		title: 'Examples';
		display: [ self gtExamples ];
		icon: #icon;
		format: #gtDisplayString;
		when: [ self gtExamples notEmpty ]