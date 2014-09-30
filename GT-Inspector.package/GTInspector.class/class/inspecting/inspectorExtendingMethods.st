inspectorExtendingMethods
	^ (Object withAllSubclasses
		flatCollect: [ :each | 
			(Pragma allNamed: #gtInspectorPresentationOrder: in: each) 
				collect: [ :p | p method asRingDefinition ] ])
		sorted