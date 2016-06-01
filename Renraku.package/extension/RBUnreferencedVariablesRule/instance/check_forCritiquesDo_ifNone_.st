check: aClass forCritiquesDo: aCriticBlock ifNone: alternativeBlock
	
	| allSubclasses encounteredCritic |
	encounteredCritic := false.
	allSubclasses := aClass withAllSubclasses.
	aClass instVarNames do: 
		[ :each | 
		(allSubclasses 
			noneSatisfy: [ :class | (class whichSelectorsAccess: each) isNotEmpty ])
			ifTrue: 
				[
					encounteredCritic := true.
					aCriticBlock cull: (
						ReStringBasedCritique for: aClass by: self badString: each ) ] ].
				
	aClass isMeta ifFalse: 
		[ aClass classPool associationsDo: 
			[ :each | 
			(SystemNavigation default allCallsOn: each) ifEmpty: 
				[ encounteredCritic := true.
					aCriticBlock cull: (
						ReStringBasedCritique for: aClass by: self badString: each key ) ] ] ].
			
	encounteredCritic ifFalse: alternativeBlock 