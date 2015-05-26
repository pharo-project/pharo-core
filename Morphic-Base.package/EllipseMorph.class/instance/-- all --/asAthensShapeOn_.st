asAthensShapeOn: anAthensCanvas
	| radius width |
	self bounds area > 0
		ifFalse: [ ^ self ].
	width := self bounds width.
	radius := width / 2.
	^ anAthensCanvas
		createPath: [ :builder | 
			builder
				absolute;
				moveTo: width @ radius;
				cwArcTo: 0 @ radius angle: Float pi;
				cwArcTo: width @ radius angle: Float pi ]