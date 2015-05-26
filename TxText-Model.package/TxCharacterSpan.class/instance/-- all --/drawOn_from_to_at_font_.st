drawOn: aCanvas from: start to: end at: aPoint font: aFont

	aCanvas 
		drawString: characters 
		from: start
		to: end 
		at: aPoint 
		font: aFont
		color: (self getAttribute: TxForeColorAttribute)