controlButtonDisabledBorderStyleFor: aButton
	"Return the disabled button borderStyle for the given control button."

	|pc mc ic|
	pc := self buttonColorFor: aButton.
	mc := (pc alphaMixed: 0.6 with: Color black) alpha: 0.5.
	ic := Color white alpha: 0.3. 
	^(CompositeBorder new width: 1)
		borders: {BorderStyle simple
					width: 1;
					baseColor: mc.
				BorderStyle simple
					width: 1;
					baseColor: ic}