inspectorSpec
	<spec>
	
	^ SpecLayout composed
		newColumn: [ :c | 
					c
						add: #toolbar height: 18;
		newRow: [ :r |
			r 
				newColumn: #list right: 0.6;
				addSplitter;
				newColumn: #description left: 0.4 ]
		bottom: 0.3;
		addHSplitter;
		newRow: #text top: 0.7];
		yourself