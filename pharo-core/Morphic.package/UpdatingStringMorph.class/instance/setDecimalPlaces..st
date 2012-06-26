editing
setDecimalPlaces: places
	"Set the number of decimal places, and update the display."

	self decimalPlaces: places.
	self acceptValueFromTarget: lastValue