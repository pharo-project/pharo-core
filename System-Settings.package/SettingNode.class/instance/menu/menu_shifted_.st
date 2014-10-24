menu: menu shifted: b 
	menu
		add: 'Browse (b)'
		target: self
		selector: #browseDeclaration.		
	self item isExportable ifFalse: [ ^self ].
	menu 
		add: 'Display export action string' 
		target: self item
		selector: #displayExportAction