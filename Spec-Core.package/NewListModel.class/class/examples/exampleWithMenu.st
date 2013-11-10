exampleWithMenu
	"self exampleWithMenu"
	| menu group1 item11 item12 group2 item21 item22 model|

	menu := MenuModel new.
	group1 := MenuGroupModel new.
	item11 := MenuItemModel new
		name: [ TimeStamp now asString  ];
		enabled: [ TimeStamp now seconds even ];
		yourself.
		
	item12 := MenuItemModel new
		name: 'item2';
		shortcut: $b shift command mac | $b alt shift win | $b alt shift unix;
		action: [ self halt ];
		enabled: true;
		yourself.
		
	group1 addMenuItem: item11.
	group1 addMenuItem: item12.
	group1 autoRefresh: true.


	group2 := MenuGroupModel new.
	item21 := MenuItemModel new
		name: 'item3';
		state: [ TimeStamp now seconds odd ];
		description: [ TimeStamp now asString  ];
		yourself.
		
	item22 := MenuItemModel new
		name: 'item4';
		subMenu: (MenuModel new 
			autoRefresh: true;
			addGroup: [ :g |
				g addItem: [ :i| i 
					name: [ 'sub' , ((Character value: (TimeStamp now seconds + 60))) asString ];
					action: [ self halt ];
					shortcut: $d shift command mac | $d alt shift win | $d alt shift unix
					]];
					
				yourself);
		yourself.
		
	group2 addMenuItem: item21.
	group2 addMenuItem: item22.

	menu addMenuGroup: group1.
	menu addMenuGroup: group2.

	menu title: 'Test'.

	model := NewListModel new.
	model menu: menu.
	model openWithSpec