check: aClass forCriticsDo: aCriticBlock ifNone: alternativeBlock
	
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
						ReStringSearchCritic for: aClass by: self badSubstring: each ) ] ].
				
	aClass isMeta ifFalse: 
		[ aClass classPool associationsDo: 
			[ :each | 
			(SystemNavigation default allCallsOn: each) ifEmpty: 
				[ encounteredCritic := true.
					aCriticBlock cull: (
						ReStringSearchCritic for: aClass by: self badSubstring: each key ) ] ] ].
			
	encounteredCritic ifFalse: alternativeBlock 