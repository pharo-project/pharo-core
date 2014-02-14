komitterMenuOn: aBuilder
	<worldMenu>
	
	(aBuilder item: #Komitter)
		action: [ self openAndCommitToMonticello ];
		order: 0.29;
		parent: #Tools;
		help: 'Cherry pick what you commit';
		icon: self taskbarIcon.
	aBuilder withSeparatorAfter.	