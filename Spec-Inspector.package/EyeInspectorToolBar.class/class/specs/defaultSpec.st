defaultSpec
	<spec>
	^ SpecLayout composed
		newRow: [ :r | 
			r
				add: #previousButton width: 24;
				add: #inspectorChoice;
				add: #nextButton width: 24
		];
	yourself.