openOn: aPage
	| window |
	window := super openOn: aPage.
	window extent: self class preferredExtent.
	window when: WindowResizing do: [ 
		window isMinimized ifFalse: [ 
			"we only wnat to react to real resizing, not to minization"
			self class setPreferredExtentIfWanted: window extent ] ].
	^ window