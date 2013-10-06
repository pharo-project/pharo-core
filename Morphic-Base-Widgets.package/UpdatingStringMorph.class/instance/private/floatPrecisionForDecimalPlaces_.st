floatPrecisionForDecimalPlaces: places
	"Answer the floatPrecision that corresponds to the given number of decimal places"

	^ places caseOf:
			{[0]->[1] .
			[1]->[0.1] . 
			[2]->[0.01] .
			[3]->[0.001] .
			[4]->[0.0001] .
			[5]->[0.00001] .
			[6]->[0.000001] .
			[7]->[0.0000001] .
			[8]->[0.00000001] .
			[9]->[0.000000001]}
		otherwise:
			[(10.0 raisedTo: places negated) asFloat]

"
(0 to: 6) collect: [:i | Utilities floatPrecisionForDecimalPlaces: i]
(-10 to: 20) collect: [:i | Utilities floatPrecisionForDecimalPlaces: i]
"