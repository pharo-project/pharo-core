fill-styles-scrollbars
scrollbarNormalFillStyleFor: aScrollbar
	"Return the normal scrollbar fillStyle for the given scrollbar."
	
	^aScrollbar sliderColor alphaMixed: 0.3 with: Color white