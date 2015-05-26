shortCuts
	| shortCuts |
	shortCuts := super shortCuts.

	shortCuts at: $c command put: [ self copySelectedItemAccessorCode ].
	
	^ shortCuts