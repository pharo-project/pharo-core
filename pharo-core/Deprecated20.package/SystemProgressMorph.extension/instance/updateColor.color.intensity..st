*Deprecated20
updateColor: aMorph color: aColor intensity: anInteger 
	"update the apareance of aMorph"
	
	| fill |
	self deprecated: 'No senders in image' on: '22 May 2012' in: 'Pharo 2.0'.

	self theme preferGradientFill ifFalse: [^ self].
	fill := GradientFillStyle ramp: {0.0 -> Color white. 1 ->aColor}.
	fill radial: false;
		origin: aMorph topLeft;
		direction: 0 @ aMorph height.
	aMorph fillStyle: fill