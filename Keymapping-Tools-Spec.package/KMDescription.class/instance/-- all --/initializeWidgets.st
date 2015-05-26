initializeWidgets

	self instantiateModels: #(
		categoryList DropListModel
		shortcutList MultiColumnListModel
		okToolbar OkToolbar
		orderingList DropListModel ).
	
	orderingList 
		addItemLabeled:'shortcut	:	description' 
			do: [self collectShortcutDescription.
				 self updateShortcutList];
		addItemLabeled:'description	:	shortcut' 
			do: [self collectDescriptionShortcut.
				 self updateShortcutList].
	
	shortcutList 
		displayBlock: [ :e | e ];
		allowToSelect: false.

	okToolbar okButton
			label: 'Close';
			state: false