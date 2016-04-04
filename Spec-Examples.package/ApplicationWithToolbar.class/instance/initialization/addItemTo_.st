addItemTo: aGroup
	aGroup
		addItem: [ :item | 
			item
				name: 'Dynamic';
				icon: Smalltalk ui icons delete;
				action: [ aGroup menuItems remove: item.
					self needRebuild: false.
					self buildWithSpec ] ].
	self needRebuild: false.
	self buildWithSpec