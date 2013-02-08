menu
menu: menu shifted: b 
	menu
		add: 'Browse (b)' translated
		target: self
		selector: #browseDeclaration.
		
	self item isExportable ifFalse: [ ^self ].
	menu 
		add:'Display export action string' translated
		target: self item
		selector: #displayExportAction