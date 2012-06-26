morphic
morphicMenuSettingsOn: aBuilder 
	(aBuilder group: #menu)
		label: 'Menu' translated;
		parent: #morphic;
		description: 'All menu settings' translated;
		target: UITheme;
		targetSelector: #currentSettings;
		noOrdering;
		with: [
			(aBuilder setting: #preferGradientFill)
				label: 'Gradient filling' translated;
				description: 'If true, then menus will have a gradient look' translated.
			(aBuilder setting: #flatMenu)
				label: 'Flat appearance' translated;
				description: 'If true, then menu will without 3D like borders.' translated.
			(aBuilder setting: #autoMenuColor)
				label: 'Computed color' translated;
				description: 'If true, then the menu color will be computed from world dressing.' translated.
			(aBuilder setting: #menuColor)
				label: 'Menu color' translated;
				description: 'The menu color to use if it is not computed automatically (see the ''Computed color'' setting)' translated.
			(aBuilder setting: #menuSelectionColor)
				label: 'Menu selection color' translated;
				description: 'The background color of a selected menu item' translated.
			(aBuilder setting: #menuSelectionTextColor)
				description: 'The text color of a selected menu item' translated;
				label: 'Menu selection text color' translated.
		]