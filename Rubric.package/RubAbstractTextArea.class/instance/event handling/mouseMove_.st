mouseMove: evt
	
	evt redButtonPressed
		ifTrue:
			[ mouseDownPoint
				ifNotNil:
					[ self
						markBlock: (self paragraph characterBlockAtPoint: evt cursorPoint )
						pointBlock: (self paragraph characterBlockAtPoint: mouseDownPoint) ]
				ifNil: [  
					evt shiftPressed 
						ifTrue: [self modifySelection: (self paragraph characterBlockAtPoint: evt cursorPoint) ]
						ifFalse: [self markBlock: (self paragraph characterBlockAtPoint: evt cursorPoint) ]].
			self editor storeSelectionInText.
			mouseDownPoint := nil ]