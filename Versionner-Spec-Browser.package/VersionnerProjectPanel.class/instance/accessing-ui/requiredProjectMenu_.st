requiredProjectMenu: aMenu
	| menuGroup |
	
	menuGroup := MenuGroupModel new.	
	menuGroup addMenuItem: 
		(MenuItemModel new
			name: #'edit version';
			action: [  projectList selectedItem content editVersion.
					projectList roots: project requiredProjects ]).
	menuGroup addMenuItem: 
		(MenuItemModel new
			name: #'edit repositories';
			action: [  projectList selectedItem content editRepositories ]).
	aMenu addMenuGroup: menuGroup.
	^aMenu