checkClass: aContext 
	
	"The comparison between methods is made using the ast, this is better than comparing source code only since it does not take into account identations, extra parenthesis, etc"
	
	| selectedClass |
	selectedClass := aContext selectedClass.
	selectedClass hasTraitComposition ifTrue: [  
		selectedClass localMethods do: [ :method | |traitCompositionMethod |
			traitCompositionMethod := (selectedClass traitComposition methodDescriptionForSelector: method selector) effectiveMethod.
			traitCompositionMethod ifNotNil: [
				
				(traitCompositionMethod ast = method ast) 
					ifTrue: [ result addClass: selectedClass selector: method selector ]]]].