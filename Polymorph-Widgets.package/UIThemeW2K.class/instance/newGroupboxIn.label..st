groupbox
newGroupboxIn: aThemedMorph label: aString
	"Answer a groupbox with the given label."
	
	|aMorph |
	
	aMorph := W2KGroupboxMorph new
		font: self labelFont;
		cornerStyle: #square;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		label: aString;
		yourself.
			
	aMorph borderStyle: W2KGroupBorder new.
	^aMorph