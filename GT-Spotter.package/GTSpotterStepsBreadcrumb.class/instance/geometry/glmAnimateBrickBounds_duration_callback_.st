glmAnimateBrickBounds: aValue duration: anInteger callback: aBlock

	anInteger <= 0
		"if duration is zero, move to the left immediately"
		ifTrue: [ self leftTo: aValue ]
		ifFalse: [
			| startTime start currentValue startBounds|
			currentValue := 0.
			startBounds := self band brickBounds.
			startTime := Time millisecondClockValue.
			start := currentValue.
			[	| delta translate|
				[ (delta := Time millisecondClockValue - startTime) < anInteger ] whileTrue: [
					translate := (aValue - start) * (delta / anInteger) + start.
					self band brickBounds: (startBounds translateBy: translate@0).
					self changed.
					Processor yield
				].
				self band brickBounds: (startBounds translateBy: aValue@0).
				self changed.
				Processor yield.
				aBlock ifNotNil: [ aBlock value ].
			] fork
		]