border-styles-buttons
controlButtonNormalBorderStyleFor: aButton
	"Return the normal button borderStyle for the given control button."

	|pc mc ic|
	pc := self buttonColorFor: aButton.
	mc := pc alphaMixed: 0.7 with: Color black.
	ic := Color white alpha: 0.3. 
	^(CompositeBorder new width: 1)
		borders: {BorderStyle simple
					width: 1;
					baseColor: mc.
				BorderStyle simple
					width: 1;
					baseColor: ic}