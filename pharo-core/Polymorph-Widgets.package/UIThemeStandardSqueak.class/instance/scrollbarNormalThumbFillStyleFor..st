fill-styles-scrollbars
scrollbarNormalThumbFillStyleFor: aScrollbar
	"Return the normal scrollbar thumb fillStyle for the given scrollbar."
	
	^aScrollbar sliderColor
		alphaMixed: 0.5 with: (Color gray: 0.95)