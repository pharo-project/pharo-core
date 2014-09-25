createWindowHandleFor: osWindow
	^ (preferableDriver ifNil: [ OSWindowDriver current ]) createWindowWithAttributes: self osWindow: osWindow