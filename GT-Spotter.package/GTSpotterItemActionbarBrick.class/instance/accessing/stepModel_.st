stepModel: anObject
	stepModel := anObject.
	
	self stepModel spotter announcer weak when: GTSpotterRevealHints send: #onRevealHints to: self.
	self stepModel spotter announcer weak when: GTSpotterHideHints send: #onHideHints to: self.
	
	self
		addActActionButton;
		addDiveInActionButton