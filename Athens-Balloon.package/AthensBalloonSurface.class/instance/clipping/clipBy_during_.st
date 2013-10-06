clipBy: aRectangle during: aBlock

	| oldRect |
	
	oldRect := engine clipRect.
	engine clipRect: (oldRect intersect: aRectangle).

	aBlock ensure: [ engine clipRect: oldRect ]