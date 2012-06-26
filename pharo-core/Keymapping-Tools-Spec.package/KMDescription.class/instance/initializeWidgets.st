initialization
initializeWidgets

	self instantiateModels: #(
		droplist DropListModel
		list MultiColumnListModel
		okButton ButtonModel
		displayList DropListModel ).
	
	displayList items: {
		DropListItem 
			named:'shortcut	:	description' 
			do: [ 
					collectingBlock := [:e | {e shortcut asString. ':'. e description asString} ].
					sortingBlock := [:a :b | true ]].
		DropListItem 
			named:'description	:	shortcut' 
			do: [ 
					collectingBlock := [:e | {e description asString. ':'. e shortcut asString} ].
					sortingBlock := [:a :b | a first < b first ]]}.
	
	list 
		displayBlock: [ :e | e ];
		allowToSelect: false.

	okButton 
			label: 'Close';
			state: false