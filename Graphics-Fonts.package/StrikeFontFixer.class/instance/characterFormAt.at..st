as yet unclassified
characterFormAt: aCharacter at: aPoint

	| f |
	f := charForms at: aCharacter asciiValue + 1.
	(f magnifyBy: 3) displayAt: aPoint.
	^ f.
