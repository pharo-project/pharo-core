halos and balloon help
defaultBalloonColor
	^ Display depth <= 2
		ifTrue: [Color white]
		ifFalse: [BalloonMorph balloonColor]