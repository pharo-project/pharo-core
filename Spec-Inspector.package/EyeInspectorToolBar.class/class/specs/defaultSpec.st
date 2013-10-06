defaultSpec
	<spec>
	^ SpecLayout composed
		newRow: [ :r | r
					add: #previousButton;
					add: #nextButton
		];
	yourself.