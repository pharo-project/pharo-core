world menu
menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder group: #SystemChanges)
		parent: #Tools;  
		with: [
			(aBuilder item: #'Change Sorter')
				action:[self new morphicWindow openInWorld]; 
				icon: self taskbarIcon.]