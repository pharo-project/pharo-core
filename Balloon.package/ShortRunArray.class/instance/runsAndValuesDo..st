enumerating
runsAndValuesDo: aBlock
	"Evaluate aBlock with the length and value of each run in the receiver"
	| basicValue length value |
	1 to: self basicSize do:[:i|
		basicValue := self basicAt: i.
		length := basicValue bitShift: -16.
		value := basicValue bitAnd: 16rFFFF.
		value := (value bitAnd: 16r7FFF) - (value bitAnd: 16r8000).
		aBlock value: length value: value.
	].