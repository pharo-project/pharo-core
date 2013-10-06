layout
	| width |
	width := StandardFonts defaultFont widthOfStringOrText: (slider max + slider quantum) asString.
	
	^ SpecLayout composed 
		newRow: [:r |
			r
				add: #slider;
				newColumn: [:c | c add: #text ] width: width ]
		 height: 25;
		yourself