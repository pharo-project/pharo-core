border-styles-scrollbars
scrollbarNormalThumbBorderStyleFor: aScrollbar
	"Return the normal thumb borderStyle for the given scrollbar."

	|c|
	c := self settings scrollbarColor alphaMixed: 0.7 with: Color black.
	^(CompositeBorder new width: 2)
		borders: {BorderStyle simple
					width: 1;
					baseColor: c.
				BorderStyle simple
					width: 1;
					baseColor: c twiceLighter}