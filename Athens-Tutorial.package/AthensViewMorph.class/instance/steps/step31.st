step31
"The End!"

	| font ramp perfectRadial |	
	font := LogicalFont familyName: 'Arial' pointSize: 20.

	ramp :=  {
			0 -> Color blue .
			0.25 -> Color red.
			0.5 -> Color white.
			0.75 -> Color yellow.
			1 -> (Color blue alpha: 1.0)
		}.
		
	perfectRadial := surface createRadialGradient: ramp
		center: 40@5  radius: 40 .

	surface drawDuring: [:canvas |
		surface clear: Color black.

		canvas setFont: font.
		canvas setPaint: perfectRadial.
		
		canvas pathTransform scaleBy: 4.
		canvas pathTransform translateX: 0 Y: (font getPreciseAscent).
		canvas drawString: 'The End!'.
	].