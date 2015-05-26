spotterExtendingMethods
	^(Object withAllSubclasses
		flatCollect: [ :each | 
			(Pragma allNamed: #spotterOrder: in: each) 
				collect: [ :p | p method asRingDefinition ] ])
		sorted