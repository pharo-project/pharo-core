changeSetMenu1NewGeneration: aMenuModel
		
	| group2 group |
	group := MenuGroupModel new.	

	self selectedChangeSet ifNotNil: [
		(group addMenuItem:
			(MenuItemModel new
				name: #'Make changes go to me';
				shortcut: $m command; 
				action: [ self setCurrentChangeSet ])).
		(group addMenuItem:
			(MenuItemModel new
				name: #'New change set...';
				shortcut: $n command; 
				action: [ self newSet ]))		
				].


	group addMenuItem:
			(MenuItemModel new
				name: #'Find ...';
				shortcut: $f command; 
				action: [ self findChangeSet ]).				

	
	group2 := MenuGroupModel new.
				
	self selectedChangeSet ifNotNil: [
		(group2 addMenuItem:
			(MenuItemModel new
				name: #'Rename change set';
				shortcut: $r command; 
				action: [ self rename ])).
		(group2 addMenuItem:
			(MenuItemModel new
				name: #'File out';
				shortcut: $o command; 
				action: [ self fileOut ])).
		(group2 addMenuItem:
			(MenuItemModel new
				name: #'Browse methods';
				shortcut: $b command; 
				action: [ self browseChangeSet ])).
		(group2 addMenuItem:
			(MenuItemModel new
				name: #'Browse change set';
				shortcut: $b shift command; 
				action: [ self openChangeSetBrowser ]))							
				].				
									
	aMenuModel
		addMenuGroup: group;
		addMenuGroup: group2.
	self classesListModel menu: aMenuModel.
		
	