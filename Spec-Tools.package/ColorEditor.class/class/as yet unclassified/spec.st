spec
	<spec>
	
	^ SpecLayout composed
			newRow: [:r |
				r 
					add: #r;
					add: #g;
					add: #b;
					add: #a;
					newColumn: [:c | c add: #morph ] width: 25 ]
			 height: 25;
			yourself