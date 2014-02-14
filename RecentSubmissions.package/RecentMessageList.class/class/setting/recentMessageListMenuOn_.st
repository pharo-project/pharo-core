recentMessageListMenuOn: aBuilder 
	<worldMenu> 
	
	(aBuilder item: #'Recent Messages')
		action: [self open];
		parent: #Tools;
		order: 0.50;
		help: 'Browse the last messages you''ve submitted';
		icon: self icon