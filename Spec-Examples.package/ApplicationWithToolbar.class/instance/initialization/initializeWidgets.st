initializeWidgets
	menu := MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'File';
						icon: (Smalltalk ui icons iconNamed: #openIcon);
						subMenu: self subMenu ].
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Open file';
						icon: (Smalltalk ui icons iconNamed: #openIcon);
						action: [ self inform: 'Open File' ] ].
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Save File';
						icon: (Smalltalk ui icons iconNamed: #smallSaveIcon);
						action: [ self inform: 'Save File' ] ].
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Print file';
						icon: (Smalltalk ui icons iconNamed: #smallPrintIcon);
						action: [ self inform: 'Print file' ] ] ];
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Undo';
						icon: (Smalltalk ui icons iconNamed: #smallUndoIcon);
						action: [ self inform: 'Undo' ] ].
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Redo';
						icon: (Smalltalk ui icons iconNamed: #smallRedoIcon);
						action: [ self inform: 'Redo' ] ] ];
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Add menu item';
						icon: (Smalltalk ui icons iconNamed: #add);
						action: [ self addItemTo: group ] ] ].
	menu applyTo: self.
	text := self newText.
	self focusOrder add: text