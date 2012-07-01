morph creation
newBalloonHelpIn: aThemedMorph contents: aTextStringOrMorph for: aMorph corner: cornerSymbol
	"Answer a new balloon help morph with the given text
	and positioning for aMorph."
	
	^BalloonMorph
		string: aTextStringOrMorph
		for: aMorph
		corner: cornerSymbol