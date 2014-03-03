browseSubMenu: aMenu
	
	aMenu addGroup: [ :aGroup |
		aGroup addItem: [ :anItem |
			anItem 
				name: 'Browse Full';
				action: [ self browseSelectedObject ];
				shortcut: $b command mac | $b alt win | $b alt unix  ].
			
		aGroup addItem: [ :anItem |
			anItem 
				name: 'Browse Class';
				action: [ self browseSelectedObjectClass ] ].
			
		aGroup addItem: [ :anItem |
			anItem 
				name: 'Browse Hierarchy';
				action: [ self browseSelectedObjectClassHierarchy ];
				shortcut: $h command mac | $h alt win | $h alt unix ] ]