border-styles
progressBarBorderStyleFor: aProgressBar
	"Return the progress bar borderStyle for the given progress bar."

	|pc mc ic|
	pc := self progressBarColorFor: aProgressBar.
	mc := pc alphaMixed: 0.7 with: Color black.
	ic := Color white alpha: 0.3.
	^(CompositeBorder new width: 1)
		borders: {RoundedBorder new
					cornerRadius: 1;
					width: 1;
					baseColor: mc.
				BorderStyle simple
					width: 1;
					baseColor: ic}