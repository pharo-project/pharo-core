defaultDialogMorphIn: aThemable
	| treeMorph patternMorph |
	treeMorph := self defaultTreeMorph.
	patternMorph := patternModel newTextField
		hResizing: #spaceFill;
		autoAccept: true;
		withGhostText: ghostString;
		textFont: StandardFonts defaultFont;
		yourself.
	patternMorph ghostTextRuler font: StandardFonts defaultFont.
	^ aThemable newColumn: {patternMorph. treeMorph}