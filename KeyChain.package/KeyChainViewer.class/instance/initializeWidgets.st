initialize
initializeWidgets
	"Initialization code for KeyChainViewer"

	self instantiateModels: #(
		add ButtonModel
		edit ButtonModel
		list MultiColumnListModel
		ok OkToolbar
		remove ButtonModel ).
	
	self initializeAdd.
	self initializeEdit.
	self initializeRemove.
	ok okButton label: 'Close'.
	list displayBlock: [ :item | self wrapItem: item ].
	
	keychain whenChangedDo: [:kc | 
		add enabled: kc notNil.
		list resetSelection.
		self updateTitle.
		list items: kc bindings associations ].
	
	list whenSelectedItemChanged: [:it |
		edit enabled: it notNil.
		remove enabled: it notNil ].
	
	self focusOrder 
		add: list;
		add: add;
		add: edit;
		add: remove;
		add: ok.