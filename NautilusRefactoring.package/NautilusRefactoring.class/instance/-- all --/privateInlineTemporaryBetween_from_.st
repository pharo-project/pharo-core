privateInlineTemporaryBetween: anInterval from: aMethod

	^ RBInlineTemporaryRefactoring
		model: environment
		inline: anInterval
		from: aMethod selector
		in: aMethod methodClass