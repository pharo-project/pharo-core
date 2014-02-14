menuCommandOn: aBuilder  
	<worldMenu>
	
	(aBuilder item: 'Configuration Browser')
		parent: #Tools;
		order: 0.20;
		action: [self new openWithSpec]; 
		icon: Smalltalk ui icons configIcon