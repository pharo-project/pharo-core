logicalFont: aFont
	font := aFont.
	font ifNotNil: [ 
		familyName := font familyName.
		size := font pointSize.
	].
	
	self notifyUpdate.