openBelow: aRectangle
	"aRectangle must be in global coordinates"
	^ self asBrickedMorph
		bounds: (aRectangle origin 
						extent: (self extent - (0@self themer popupThemer borderWidth)));
		openInWorld
	