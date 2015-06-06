initializePresenter

	changes whenSelectedItemChanged: [ :change |
		change ifNotNil: [ codePane text: change contents ]].
	
	changes menu: [:menu :shifted | self buildMenu: menu ].
	
	selectAllButton action: [
		changes selectAll
	].

	deselectAllButton action: [
		changes resetSelection
	].

	fileInSelectedButton action: [ 
		changes selectedItems reverse do: [ :change | self fileIn: change ]
	].