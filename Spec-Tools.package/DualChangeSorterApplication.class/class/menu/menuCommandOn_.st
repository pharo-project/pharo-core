menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder group: #SystemChanges)
		parent: #Tools;  
		order: 0.51;
		with: [
			(aBuilder item: #'Change Sorter')
				action:[self open]; 
				icon: self taskbarIcon.				
			(aBuilder item: #'Recover lost changes...') 
				icon: (Smalltalk ui icons iconNamed: #recoverLostChangesIcon);
				action: [Smalltalk tools changeList browseRecentLog].].			
	aBuilder withSeparatorAfter.		