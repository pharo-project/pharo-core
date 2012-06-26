world menu
menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder group: #SystemChanges)
		parent: #Tools;  
		with: [
			(aBuilder item: #'Change Sorter')
				action:[self new morphicWindow openInWorld]; 
				icon: self taskbarIcon.
			(aBuilder item: #'Recover lost changes...') 
				action: [Smalltalk tools changeList browseRecentLog]]