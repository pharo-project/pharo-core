openOn: aPage
	| window |
	window := super openOn: aPage.
	window extent: self class preferredExtent.
	window when: WindowResizing do: [ 
		self class setPreferredExtentIfWanted: window extent ].
	^ window