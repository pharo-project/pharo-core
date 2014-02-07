requiredProjectMenu: aMenu
	| menuGroup |
	
	menuGroup := MenuGroupModel new.	
	menuGroup addMenuItem: 
		(MenuItemModel new
			name: #'edit repositories';
			action: [  projectList selectedItem content editRepositories ]).
	aMenu addMenuGroup: menuGroup.
	^aMenu