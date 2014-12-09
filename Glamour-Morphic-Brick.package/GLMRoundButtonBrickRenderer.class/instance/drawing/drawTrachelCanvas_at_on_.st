drawTrachelCanvas: trachelCanvas at: aPoint on: aCanvas
	|surface|
	
	surface := AthensCairoSurface extent: (trachelCanvas extent) asIntegerPoint.
	
	surface drawDuring: [:cs |
		surface clear.
		trachelCanvas shapes do: [ :trachelShape |
			trachelShape drawOn: cs.
		].
	].

	aCanvas image: surface asForm at: aPoint sourceRect: (0 @ 0 extent: surface extent) rule: 34.