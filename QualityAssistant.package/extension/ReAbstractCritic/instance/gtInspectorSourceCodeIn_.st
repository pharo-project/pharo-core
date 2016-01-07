gtInspectorSourceCodeIn: composite
	<gtInspectorPresentationOrder: 0>

	target glmSourcePresentationIn: composite.
	
	self providesSelection ifTrue: [ 
		composite presentations
			select: [ :p | p isKindOf: GLMRubricSmalltalkCodePresentation ] 
			thenDo: [ :p | p initialize: [ :p2 | p2 selectionInterval: self selection ] ] ]
	
		