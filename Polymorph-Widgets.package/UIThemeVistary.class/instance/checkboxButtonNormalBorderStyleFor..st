border-styles-buttons
checkboxButtonNormalBorderStyleFor: aCheckboxButton
	"Return the normal checkbox button borderStyle for the given button."

	|pc oc mc ic|
	pc := self buttonColorFor: aCheckboxButton.
	oc := pc twiceDarker.
	mc := (pc alphaMixed: 0.4 with: Color white).
	ic := pc lighter. 
	^(CompositeBorder new width: 2)
		borders: {BorderStyle simple
					width: 1;
					baseColor: oc.
				BorderStyle simple
					width: 1;
					baseColor: mc.
				BorderStyle inset
					width: 1;
					baseColor: ic}