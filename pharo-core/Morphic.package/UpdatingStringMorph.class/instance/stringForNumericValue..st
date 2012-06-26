target access
stringForNumericValue: aValue
	"Answer a suitably-formatted string representing the value."

	| barePrintString |
	((barePrintString := aValue printString) includes: $e)  ifTrue: [^ barePrintString].
	^ aValue printShowingDecimalPlaces: self decimalPlaces