fill-styles-scrollbars
scrollbarNormalFillStyleFor: aScrollbar
	"Return the normal scrollbar fillStyle for the given scrollbar."
	
	|aColor|
	aColor := self scrollbarColorFor: aScrollbar.
	^(aColor alphaMixed: 0.4 with: Color white)
		alphaMixed: 0.9 with: Color black