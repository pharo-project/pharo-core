private
fromString: str radix: radix

	| maxdigit c val |
	maxdigit := 
		radix + (radix > 10
					ifTrue: [55 - 1]
					ifFalse: [48 - 1]).
	val := 0.
	1 to: str size do: 
		[:i | 
		c := str at: i.
		(c < 48 ifFalse: [c > maxdigit])
			ifTrue: [^false].
		val := val * radix + (c <= 57
							ifTrue: [c - 48]
							ifFalse: 
								[c < 65 ifTrue: [^false].
								c - 55])].
	^val