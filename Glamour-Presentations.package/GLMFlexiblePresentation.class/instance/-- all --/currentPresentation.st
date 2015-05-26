currentPresentation 
	 
	^ (self displayValue isCollection and: [self displayValue isString not])
		ifTrue: [GLMListPresentation new showOnly: 50; pane: self pane]
		ifFalse: [GLMTextPresentation new pane: self pane]