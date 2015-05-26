stepModel: anObject
	stepModel := anObject.
	
	self stepModel spotter announcer weak subscribe: GTSpotterRevealHints send: #onRevealHints to: self.
	self stepModel spotter announcer weak subscribe: GTSpotterHideHints send: #onHideHints to: self.
	
	self
		addActActionButton;
		addDiveInActionButton