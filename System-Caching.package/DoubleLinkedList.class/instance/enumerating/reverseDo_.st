reverseDo: block
	| current |
	current := tail.
	[ current isNil ] 
		whileFalse: [ 
	 		block value: current value.
			current := current previousLink ]