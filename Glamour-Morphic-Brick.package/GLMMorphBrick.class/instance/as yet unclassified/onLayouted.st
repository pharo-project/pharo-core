onLayouted
	|origin corner newBounds|
	super onLayouted.
	
	origin := self paddingLeft @ self paddingTop.
	corner := self paddingRight @ self paddingBottom.
	newBounds := self globalBounds.
	newBounds := ((newBounds origin + origin) corner: (newBounds corner - corner)).
	
	self morph bounds: newBounds