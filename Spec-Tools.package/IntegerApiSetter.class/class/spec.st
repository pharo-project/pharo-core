as yet unclassified
spec
	<spec>
	
	^ SpecLayout composed 
			newRow: [:r |
				r 
					add: #selector;
					newColumn: [:c | c add: #choice ] width: 75]
			height: 25;
			yourself