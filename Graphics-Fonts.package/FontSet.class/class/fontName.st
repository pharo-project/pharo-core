private
fontName

	self flag: #bob.		"temporary hack until I figure out what's happening here"
	(self name beginsWith: superclass name) ifFalse: [^self name].
	^ (self name copyFrom: superclass name size + 1 to: self name size) asSymbol