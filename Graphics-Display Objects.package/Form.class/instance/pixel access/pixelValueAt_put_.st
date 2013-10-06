pixelValueAt: aPoint put: pixelValue
	"Store the given raw pixel value at the given point. Typical clients use colorAt:put: to store a color. "

	(BitBlt current bitPokerToForm: self) pixelAt: aPoint put: pixelValue.
