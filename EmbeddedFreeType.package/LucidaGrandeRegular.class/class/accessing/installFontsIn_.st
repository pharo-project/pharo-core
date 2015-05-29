installFontsIn: aProvider 
	self fontReference exists ifFalse: [ ^ self ].
	super installFontsIn: aProvider