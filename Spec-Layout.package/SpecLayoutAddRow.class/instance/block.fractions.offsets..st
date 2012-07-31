instance creation
block: aBlock fractions: frac offsets: off
	| row |
	
	row := SpecRowLayout composed.
	aBlock value: row.
	subwidget := row asArray.
	self fractions: frac.
	self offsets: off.
	
	self generateArguments