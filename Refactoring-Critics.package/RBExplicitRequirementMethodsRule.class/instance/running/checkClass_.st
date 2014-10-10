checkClass: aClass 

	| selectedClass explicitRequirementMethods |
	explicitRequirementMethods := Set new.
	selectedClass := aClass.
	
	selectedClass isTrait 
		ifTrue: [ ^ self ].
		
	selectedClass traitComposition allSelectors do: [ :selector | | method |
				method := selectedClass>>selector.
				 (method isRequired and: [ method isSubclassResponsibility not ]) 
						ifTrue: [ explicitRequirementMethods add: method ]].
	
	explicitRequirementMethods do: [ :method |
		aClass withAllSuperclasses 
			detect: [ :superclass | superclass canPerform: method selector ] ifNone: [result addClass: aClass selector: method selector]].