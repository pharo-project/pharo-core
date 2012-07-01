fill-styles-scrollbars
scrollbarNormalThumbFillStyleFor: aScrollbar
	"Return the normal scrollbar thumb fillStyle for the given scrollbar."
	
	|c|
	c := self scrollbarColorFor: aScrollbar.
	^(GradientFillStyle ramp: {
			0.0->c twiceLighter.
			0.3->c twiceLighter.
			0.4->c darker.
			0.6->c twiceLighter.
			1.0->Color white})
		origin: aScrollbar topLeft;
		direction: (aScrollbar bounds isWide
			ifTrue: [0 @ aScrollbar height]
			ifFalse: [aScrollbar width @ 0]);
		radial: false