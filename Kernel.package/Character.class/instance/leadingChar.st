accessing
leadingChar

	^ (value bitAnd: (16r3FC00000)) bitShift: -22.
