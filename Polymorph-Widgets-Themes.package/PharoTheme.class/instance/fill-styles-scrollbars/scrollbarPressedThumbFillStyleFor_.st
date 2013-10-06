scrollbarPressedThumbFillStyleFor: aScrollbar
	"Return the normal scrollbar fillStyle for the given scrollbar."
	
	^ (self glamorousReverseFillStyleWithBaseColor: aScrollbar paneColor for:  aScrollbar height: aScrollbar height)
		direction: (aScrollbar bounds isWide
			ifTrue: [0 @ aScrollbar height]
			ifFalse: [aScrollbar width @ 0])