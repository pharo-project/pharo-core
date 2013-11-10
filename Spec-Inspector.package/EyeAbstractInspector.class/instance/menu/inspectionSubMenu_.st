inspectionSubMenu: aMenu

	aMenu addGroup: [:aGroup |
		aGroup addItem: [ :item |
			item
				name: 'Inspect' translated;
				action: [ self inspectSelectedObjectInNewWindow ];
				shortcut: $i command mac | $i alt win | $i alt unix ].
		aGroup addItem: [ :item |
			item
				name: 'Explore' translated;
				action: [ self exploreSelectedObject ];
				shortcut: $i shift command mac | $i shift alt win | $i shift alt unix ].

	self customMenuActions cull: aMenu cull: aGroup.
			
	]