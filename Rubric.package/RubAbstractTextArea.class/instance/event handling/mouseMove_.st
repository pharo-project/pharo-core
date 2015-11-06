mouseMove: evt
	evt redButtonPressed
		ifTrue:
			[ mouseDownPoint
				ifNotNil:
					[ self
						markBlock: (self paragraph characterBlockAtPoint: evt cursorPoint )
						pointBlock: (self paragraph characterBlockAtPoint: mouseDownPoint) ]
				ifNil: [ self markBlock: (self paragraph characterBlockAtPoint: evt cursorPoint) ].
			self editor storeSelectionInText.
			mouseDownPoint := nil ]