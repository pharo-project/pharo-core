menu
menuCommandOn: aBuilder  
	<worldMenu>
	(aBuilder item: 'Configuration Browser')
		parent: #Tools;
		order: 0.5;
		action: [self new openWithSpec]; 
		icon: ThemeIcons smallLoadProjectIcon