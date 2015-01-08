drawOn: aCanvas
	super drawOn: aCanvas.
	
	(aCanvas isKindOf: ClippingCanvas) ifTrue: [ ^self "no need to draw anything" ].
	
	self checkSession.
	
	surface drawDuring: [ :athensCanvas | surface clear. self onDraw: athensCanvas ].
	aCanvas image: surface asForm at: self globalBounds origin sourceRect: (0 @ 0 extent: surface extent) rule: 34