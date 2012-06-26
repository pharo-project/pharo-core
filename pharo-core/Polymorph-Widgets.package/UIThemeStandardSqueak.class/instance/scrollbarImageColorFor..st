fill-styles-scrollbars
scrollbarImageColorFor: aScrollbar
	"Return the scrollbar image colour (on buttons) for the given scrollbar."
	
	^((self scrollbarColorFor: aScrollbar)
		alphaMixed: 0.5 with: (Color gray: 0.95)) twiceDarker darker