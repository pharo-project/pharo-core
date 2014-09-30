scrollTo: aValue duration: anInteger

	anInteger <= 0
		"if duration is zero, move to the left immediately"
		ifTrue: [ self scrollTo: aValue ]
		ifFalse: [
			| startTime start currentValue |
			currentValue := self computeScrollValue: self bounds left.
			startTime := Time millisecondClockValue.
			start := currentValue.
			[	| delta |
				[ (delta := Time millisecondClockValue - startTime) < anInteger ] whileTrue: [
					self scrollTo: ((aValue - start) * (delta / anInteger) + start).
					Processor yield
				].
				self scrollTo: aValue.
			] fork
		]