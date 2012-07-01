accessing
valueAtRun: index
	"Return the value of the run starting at the given index"
	| uShort |
	uShort := (self basicAt: index) bitAnd: 16rFFFF.
	^(uShort bitAnd: 16r7FFF) - (uShort bitAnd: 16r8000)