updateHeight

	"no need to care about height, when it's logic is not customized"
	self isHeightCustom ifFalse: [ ^ self ].
	[ self privateBounds: (self brickBounds withHeight: ((self valueOfProperty: #brickGeometryHeightLogic) brickValue: self)) ]
		on: Exception
		do: [ "just skip and do nothing" ]