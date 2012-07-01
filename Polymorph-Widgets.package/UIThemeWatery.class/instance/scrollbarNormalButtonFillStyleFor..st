fill-styles-scrollbars
scrollbarNormalButtonFillStyleFor: aScrollbar
	"Return the normal scrollbar button fillStyle for the given scrollbar."
	
	| c|
	c := Color lightGray twiceLighter.
	^(GradientFillStyle ramp: {0.0->c. 0.1->Color white. 0.3->Color white.
			0.5->c. 0.7-> Color white. 1.0->Color white})
		origin: aScrollbar topLeft;
		direction: (aScrollbar bounds isWide
			ifTrue: [0 @ aScrollbar height]
			ifFalse: [aScrollbar width @ 0]);
		radial: false