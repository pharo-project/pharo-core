updateWidth
	"no need to care about width, when it's logic is not customized"
	self isWidthCustom ifFalse: [ ^ self ].
	[ self bounds: (self brickBounds withWidth: ((self valueOfProperty: #brickGeometryWidthLogic) brickValue: self)) ]
		on: Exception
		do: [ "just skip and do nothing" ]