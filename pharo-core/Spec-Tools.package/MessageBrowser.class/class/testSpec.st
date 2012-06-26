specs
testSpec
	<spec>
	
	^ SpecLayout composed
			newColumn: [:col |
				col 
					add: #listModel;
					add: #toolbarModel height: 25;
					add: #textModel ]
				