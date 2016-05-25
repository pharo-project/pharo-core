addItem
	menu
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Dynamic';
						icon: (self iconNamed: #delete);
						action: [ self remove: item ] ] ]