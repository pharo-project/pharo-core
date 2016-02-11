classRemoved: aClassRemovedAnnouncement

	(
	
		(aClassRemovedAnnouncement classRemoved isKindOf: RBLintRule) and: [ 	
			rules anySatisfy: [ :rule | 
				rule class == aClassRemovedAnnouncement classAffected 
			]	
		]
	
	)ifTrue: [ self resetRules ]