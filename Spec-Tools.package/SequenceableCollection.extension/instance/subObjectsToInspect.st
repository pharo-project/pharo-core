*Spec-Tools
subObjectsToInspect
	| element |
	
	element := self collect:[ :e | e ].

	^ super subObjectsToInspect, element