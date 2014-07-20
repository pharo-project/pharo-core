defaultSpec
	<spec>

	^ SpecLayout composed
		newRow: [ :row |
			row 
				add: #installModel;
				add: #loadModel ];
		yourself