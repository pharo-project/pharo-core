initialization
initializePresenter

	pickList 
		whenSelectedItemChanged: [ :item | textArea text: (self buildDiffFor: item) ]