as yet unclassified
placeContents
	| namePosition |
	(owner notNil and: [owner isInWorld]) ifTrue:
		[namePosition := owner basicBox bottomCenter -
			((self width // 2) @ (owner handleSize negated // 2 - 1)).
		namePosition := namePosition min: self world viewBox bottomRight - self extent y + 2.
		self bounds: (namePosition extent: self extent)]