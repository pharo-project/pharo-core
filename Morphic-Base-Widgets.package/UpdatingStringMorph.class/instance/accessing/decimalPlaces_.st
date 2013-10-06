decimalPlaces: aNumber 
	"Set the receiver's number of decimal places to be shown. If my
	target is a morph or a player, tell it about the change, in case it wants
	to remember it."
	| constrained |
	self setProperty: #decimalPlaces toValue: (constrained := aNumber min: 11).
	floatPrecision := self floatPrecisionForDecimalPlaces: constrained