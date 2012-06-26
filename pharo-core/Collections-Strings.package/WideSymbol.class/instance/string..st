private
string: aString
	1 to: aString size do: [:j | self pvtAt: j put: (aString at: j) asInteger].
	^self