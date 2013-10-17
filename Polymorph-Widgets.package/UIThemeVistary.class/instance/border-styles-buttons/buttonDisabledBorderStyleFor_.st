buttonDisabledBorderStyleFor: aButton
	"Return the disabled button borderStyle for the given button."

	|pc mc ic|
	pc := self buttonColorFor: aButton.
	mc := (pc alphaMixed: 0.6 with: Color black) alpha: 0.5.
	ic := Color white alpha: 0.3. 
	^(CompositeBorder new width: 1)
		borders: {RoundedBorder new
					cornerRadius: 2;
					width: 1;
					baseColor: mc.
				RoundedBorder new
					cornerRadius: 1;
					width: 1;
					baseColor: ic}