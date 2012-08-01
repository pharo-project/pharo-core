private
layout
	| width width2 |
	width := StandardFonts defaultFont widthOfStringOrText: pre getText.
	width2 := StandardFonts defaultFont widthOfStringOrText: post getText.
	^ SpecLayout composed 
		newRow: [:r |
			r
				newColumn: [:c | c add: #pre ] width: width;
				add: #text;
				newColumn: [:c | c add: #post ] width: width2;
				newColumn: [:c | c add: #ok ] width: 25 ]
		 height: 25;
		yourself