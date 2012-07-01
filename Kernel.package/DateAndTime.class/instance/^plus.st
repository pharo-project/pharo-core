ansi protocol
+ operand
	"operand conforms to protocol Duration"

	| ticks |
 	ticks := OrderedCollection new.
	self ticks with: (operand asDuration ticks) do: [:ticks1 :dticks |
		ticks addLast: (ticks1 + dticks) ].

	^ self class basicNew
		ticks: ticks asArray
		offset: self offset; 
		yourself.
