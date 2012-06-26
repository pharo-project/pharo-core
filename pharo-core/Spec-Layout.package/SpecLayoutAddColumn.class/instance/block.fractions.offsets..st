instance creation
block: aBlock fractions: frac offsets: off
	| column |
	
	column := SpecColumnLayout composed.
	aBlock value: column.
	subwidget := column asArray.
	self fractions: frac.
	self offsets: off.
	
	self generateArguments