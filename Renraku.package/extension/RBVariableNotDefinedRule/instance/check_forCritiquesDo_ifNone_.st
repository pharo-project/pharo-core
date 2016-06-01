check: aMethod forCritiquesDo: aCriticBlock ifNone: alternativeBlock 

	| encounteredCritic |
	
	encounteredCritic := false.

	aMethod literals allButLastDo: [ :literal | 
			(literal isVariableBinding and: [ literal key notNil ])
				ifTrue: [ 
					((Smalltalk globals associationAt: literal key ifAbsent: [  ]) == literal
						or: [ (Undeclared associationAt: literal key ifAbsent: [  ]) == literal ])
						ifFalse: [ 
							(aMethod methodClass bindingOf: literal key) == literal
								ifFalse: [ 
										(literal name = #RFMetaLink) ifFalse: [
											encounteredCritic := true.
											aCriticBlock cull: (ReStringBasedCritique
												for: aMethod 
												by: self
												badString: literal key) ] ] ] ] ].
						
	encounteredCritic ifFalse: alternativeBlock value