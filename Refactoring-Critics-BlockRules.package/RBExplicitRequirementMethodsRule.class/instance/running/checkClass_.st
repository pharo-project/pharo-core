checkClass: aContext 

	| selectedClass explicitRequirementMethods |
	explicitRequirementMethods := Set new.
	selectedClass := aContext selectedClass.
	
	selectedClass traitComposition allSelectors do: [ :selector | | method |
				method := selectedClass>>selector.
				 (method isRequired and: [ method isSubclassResponsibility not ]) 
						ifTrue: [ explicitRequirementMethods add: method ]].
	
	explicitRequirementMethods do: [ :method |
		aContext selectedClass withAllSuperclasses 
			detect: [ :superclass | superclass canPerform: method selector ] ifNone: [result addClass: aContext selectedClass selector: method selector]].