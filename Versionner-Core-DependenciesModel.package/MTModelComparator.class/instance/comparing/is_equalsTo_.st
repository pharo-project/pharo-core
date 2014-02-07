is: anMTProject equalsTo: anOtherMTProject
	| referenceModelIterator modelToCompareIterator |
	
	referenceModelIterator := MTProjectBFSIterator on: anMTProject.
	modelToCompareIterator := MTProjectBFSIterator on: anOtherMTProject.
	
	[ true ] whileTrue: [ | referenceElement elementToCompare |
			referenceElement := referenceModelIterator next.
			elementToCompare := modelToCompareIterator next.
			(referenceModelIterator next = modelToCompareIterator next) 
				ifFalse: [ ^false ].
			referenceModelIterator hasNext ifFalse: [ ^true ]  ]
