step30

"Step 30: drawing text.

Please note that this step requires Freetype enabled. 
Check if you enabled it in settings.
From world menu, go System->Settings
And then look for Appearance -> Use freetype in settings browser.

"
	| font |
	
	font := LogicalFont familyName: 'Arial' pointSize: 20.


	surface drawDuring: [:canvas |
		surface clear: Color black.

		"set font and color"
		canvas setFont: font.
		canvas setPaint: Color red.
		
		"translate an origin by font's ascent, otherwise 
		we will see only things below baseline"
		
		canvas pathTransform scaleBy: 4.
		canvas pathTransform translateX: 0 Y: (font getPreciseAscent).
		canvas drawString: 'Hello Athens!'.
	].
