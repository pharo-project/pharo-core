initialization
initializePresenter

	pickList 
		whenListChanged: [ 
			pickList 
				setSelectedIndex: 1;
				takeKeyboardFocus ];
		whenSelectedItemChanged: [ :item | 
			textArea text: (self buildDiffFor: item) ]