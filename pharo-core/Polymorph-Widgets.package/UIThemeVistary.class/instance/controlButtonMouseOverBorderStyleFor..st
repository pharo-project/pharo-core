border-styles-buttons
controlButtonMouseOverBorderStyleFor: aButton
	"Return the mouse over button borderStyle for the given control button."
	
	|pc mc ic selcol|
	pc := self buttonColorFor: aButton.
	selcol := (self selectionColor adjustSaturation: 0.3 brightness: 0.5).
	mc := pc alphaMixed: 0.4 with: (Color black alphaMixed: 0.3 with: selcol).
	ic := (Color white alphaMixed: 0.7 with: selcol) alpha: 0.3. 
	^(CompositeBorder new width: 1)
		borders: {BorderStyle simple
					width: 1;
					baseColor: mc.
				BorderStyle simple
					width: 1;
					baseColor: ic}