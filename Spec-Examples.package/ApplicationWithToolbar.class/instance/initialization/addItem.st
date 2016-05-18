addItem
	menu
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Dynamic';
						icon: (Smalltalk ui icons iconNamed: #delete);
						action: [ self remove: item ] ] ]