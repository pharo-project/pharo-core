tasklistFillStyleFor: aTasklist
	"Return the tasklist fillStyle for the given tasklist."
	
	|aColor|
	aColor := aTasklist color.
	^(GradientFillStyle ramp: {
			0.0->aColor whiter whiter. 0.2->aColor lighter.
			0.8->aColor darker. 1.0->aColor blacker})
		origin: aTasklist topLeft;
		direction: 0 @ aTasklist height;
		radial: false