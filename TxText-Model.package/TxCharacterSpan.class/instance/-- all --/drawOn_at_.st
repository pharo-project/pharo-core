drawOn: aCanvas at: aPoint 

	aCanvas 
		drawString: characters 
		at: aPoint 
		font: (self getAttribute: TxFontAttribute) 
		color: (self getAttribute: TxForeColorAttribute)