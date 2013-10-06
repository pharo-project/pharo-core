layout

	^ SpecLayout composed 
		newRow: [:r |
			r
				add: #text;
				newColumn: [:c | c add: #ok ] width: 25 ]
		 height: 25;
		yourself