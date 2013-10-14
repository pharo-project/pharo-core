menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder item: #'ProfStef Tutorials')
			parent: #Help;
			action:[ HelpBrowser openOn: self ]; 
			help: 'Browse and create ProfStef tutorials'..