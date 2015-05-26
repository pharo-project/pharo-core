drawSubmorphsOn: aCanvas
	|rectangle|
	self flag: 'revisit'.
	rectangle := (aCanvas clipRect "withHeight: (aCanvas clipRect height min: self innerBounds height)") translateBy: aCanvas origin.
	self morph fullDrawOn: (aCanvas copy setOrigin: (aCanvas origin + self bounds origin - self morph bounds origin + (self paddingLeft @ self paddingTop)) clipRect: rectangle)