drawing
fillStyle2
	"Return the current fillStyle of the receiver."
	
	| basicColor |
	basicColor := self basicColor.
	
	self warningLimit negative ifTrue: [ ^ basicColor ].
	
	textMorph ifNotNil: [ | size |
		size := self textSize.
		( size >= self warningLimit )
			ifTrue: [ | returnedColor overshoot transitionSpan transitionColor |
				transitionSpan := self warningLimit.
				transitionColor := Color yellow mixed: 0.6 with: self basicColor.
				( size >= self alertLimit )
					ifFalse: [ overshoot := size - self warningLimit ]
					ifTrue: [
						transitionSpan := self alertLimit - self warningLimit.
						basicColor := transitionColor mixed: 0.5 with: self basicColor.
						transitionColor := Color red mixed: 0.5 with: self basicColor.
						overshoot := size - self alertLimit ].
				^ (GradientFillStyle 
						ramp: {0->transitionColor. 1 -> basicColor })
						origin: (self width / 2) @ 0;
						direction: 0@(self height+(3*self height*overshoot / transitionSpan));
						normal: 0@800;
						radial: false;
						yourself
"				^ transitionColor mixed: overshoot / transitionSpan with: basicColor" ] ].
	
	^ basicColor
