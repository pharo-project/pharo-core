display
open

	| window |
	window := StandardWindow new model: self.
					
	self addAll: window.
	window openInWorld.
	window title: self label.
	^ window			