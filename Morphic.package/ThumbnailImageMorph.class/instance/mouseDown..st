event handling
mouseDown: evt
	
	
	imagePopupMorph center: (self localPointToGlobal: evt position).
	imagePopupMorph bounds: (imagePopupMorph bounds translatedAndSquishedToBeWithin: World bounds).
	imagePopupMorph openInWorld
