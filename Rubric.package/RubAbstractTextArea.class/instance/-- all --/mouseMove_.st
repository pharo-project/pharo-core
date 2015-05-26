mouseMove: evt
	evt redButtonPressed
		ifTrue: [ 
			self pointBlock: (self paragraph characterBlockAtPoint: evt cursorPoint).
			self editor storeSelectionInText ].
