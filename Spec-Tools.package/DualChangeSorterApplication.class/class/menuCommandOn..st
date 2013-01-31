menu
menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder group: #SystemChanges)
		parent: #Tools;  
		with: [
			(aBuilder item: #'Change Sorter')
				action:[self new openWithSpec]; 
				icon: self taskbarIcon.
			(aBuilder item: #'Recover lost changes...') 
				action: [Smalltalk tools changeList browseRecentLog]]