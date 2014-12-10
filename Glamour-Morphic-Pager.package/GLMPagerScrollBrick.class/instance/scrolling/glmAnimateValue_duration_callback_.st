glmAnimateValue: aValue duration: anInteger callback: aBlock

	anInteger <= 0
		"if duration is zero, move to the left immediately"
		ifTrue: [ self leftTo: aValue ]
		ifFalse: [
			| startTime start finish currentValue |
			currentValue := self scrollValue.
			startTime := Time millisecondClockValue.
			start := currentValue.
			finish := self convertScrollValue: aValue.
			[ | delta |
				[ (delta := Time millisecondClockValue - startTime) < anInteger ] whileTrue: [
					self scrollValue: (finish - start) * (delta / anInteger) + start.
					Processor yield.
				].
				self scrollValue: finish.
				Processor yield.
				aBlock ifNotNil: [ aBlock value ].
			] fork
		]