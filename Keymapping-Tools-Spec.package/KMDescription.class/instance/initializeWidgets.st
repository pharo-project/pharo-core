initialization
initializeWidgets

	self instantiateModels: #(
		#dropList DropListModel
		list MultiColumnListModel
		okToolbar OkToolbar
		displayList DropListModel ).
	
	displayList items: {
		DropListItem 
			named:'shortcut	:	description' 
			do: [ 
					collectingBlock := [:e | {e shortcut asString. ':'. e description asString} ].
					sortingBlock := [:a :b | a first < b first ]].
		DropListItem 
			named:'description	:	shortcut' 
			do: [ 
					collectingBlock := [:e | {e description asString. ':'. e shortcut asString} ].
					sortingBlock := [:a :b | a first < b first ]]}.
	
	list 
		displayBlock: [ :e | e ];
		allowToSelect: false.

	okToolbar okButton
			label: 'Close';
			state: false