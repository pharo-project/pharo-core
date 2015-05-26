privateInlineMethodFromComponentBetween: anInterval from: aMethod

	^ RBInlineMethodFromComponentRefactoring
		model: environment
		inline: anInterval
		inMethod: aMethod selector
		forClass: aMethod methodClass