scrollbarPressedFillStyleFor: aScrollbar
	"Return the pressed scrollbar fillStyle for the given scrollbar."
	
	|aColor|
	aColor := self scrollbarColorFor: aScrollbar.
	^aColor alphaMixed: 0.6 with: Color white