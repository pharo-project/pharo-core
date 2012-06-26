handles
addGrowHandle: haloSpec
	target isFlexMorph ifFalse: 
		[(self addHandle: haloSpec
				on: #mouseDown send: #startGrow:with: to: self)
				on: #mouseMove send: #doGrow:with: to: self]
	"This or addScaleHandle:, but not both, will prevail at any one time"
