testSpec
	<spec: #default>
	
	^ SpecLayout composed
			newColumn: [:col |
				col 
					add: #listModel;
					addSplitter;
					add: #toolbarModel height: 25;
					add: #textModel ]
				