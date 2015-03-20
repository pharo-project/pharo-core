requiredProjectMenu: aMenu
	aMenu addMenuGroup: (MenuGroupModel new
		addMenuItem: (MenuItemModel new
			name: #'browse project';
			action: [ self browseSelectedProject ]);
		addMenuItem: (MenuItemModel new
			name: #'edit version';
			action: [  projectList selectedItem content editVersion.
					projectList roots: project requiredProjects ]);
		addMenuItem: (MenuItemModel new
			name: #'edit repositories';
			action: [  projectList selectedItem content editRepositories ]);
		yourself).

	^ aMenu