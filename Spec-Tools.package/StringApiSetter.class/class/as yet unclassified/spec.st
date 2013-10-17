spec
	<spec>
	
	^ SpecLayout composed 
			newRow: [:r |
				r 
					add: #selector;
					add: #choice ]
			height: 25;
			yourself