gtInspectorPreviewIn: composite
	<gtInspectorPresentationOrder: 30>
	
	(self widget notNil and: [ self widget widget notNil ]) ifTrue: [ 
		 self widget widget gtInspectorMorphIn: composite ].