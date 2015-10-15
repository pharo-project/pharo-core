basicCheck: aClass 

	| selectedClass explicitRequirementMethods |
	explicitRequirementMethods := Set new.
	selectedClass := aClass.
	
	selectedClass isTrait 
		ifTrue: [ ^ false ].
		
	selectedClass traitComposition allSelectors do: [ :selector | | method |
				method := selectedClass>>selector.
				 (method isRequired and: [ method isSubclassResponsibility not ]) 
						ifTrue: [ explicitRequirementMethods add: method ]].
	
	^ explicitRequirementMethods anySatisfy: [ :method |
		aClass withAllSuperclasses 
			noneSatisfy: [ :superclass | superclass canPerform: method selector ] ].