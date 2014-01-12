do: block
	| current |
	current := head.
	[ current isNil ] 
		whileFalse: [ 
	 		block value: current value.
			current := current nextLink ]