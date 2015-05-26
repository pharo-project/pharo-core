checkClass: aClass 
	(aClass whichSelectorsReferTo: #subclassResponsibility) do: 
		[ :each | 
		(aClass withAllSubclasses 
			detect: 
				[ :class | 
				class subclasses isEmpty and: [ (class whichClassIncludesSelector: each) == aClass ] ]
			ifNone: [ nil ]) notNil ifTrue: 
			[ result 
				addClass: aClass
				selector: each ] ]