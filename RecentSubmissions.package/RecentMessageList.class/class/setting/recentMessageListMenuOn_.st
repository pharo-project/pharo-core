recentMessageListMenuOn: aBuilder 
	<worldMenu> 
	
	(aBuilder item: #'Recent Messages')
		action: [self open];
		parent: #Tools;
		help: 'Browse the last messages you''ve submitted';
		icon: self icon;
		order: 1.