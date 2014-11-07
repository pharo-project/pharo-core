glmAnimateValue: aValue duration: anInteger callback: aBlock

	anInteger <= 0
		"if duration is zero, move to the left immediately"
		ifTrue: [ self leftTo: aValue ]
		ifFalse: [
			| startTime start currentValue |
			currentValue := self currentScrollValue.
			startTime := Time millisecondClockValue.
			start := currentValue.
			[	| delta |
				[ (delta := Time millisecondClockValue - startTime) < anInteger ] whileTrue: [
					self scrollValue: (aValue - start) * (delta / anInteger) + start.
					Processor yield
				].
				self scrollValue: aValue.
				Processor yield.
				aBlock ifNotNil: [ aBlock value ].
			] fork
		]