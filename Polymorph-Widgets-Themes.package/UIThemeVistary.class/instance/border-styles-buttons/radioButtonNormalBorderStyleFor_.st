radioButtonNormalBorderStyleFor: aRadioButton
	"Return the disabled radio button borderStyle for the given button."

	|pc|
	pc := self buttonColorFor: aRadioButton.
	^BorderStyle simple
		width: 1;
		baseColor: pc twiceDarker