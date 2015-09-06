hasSubMenu: aMenuMorph

	^menuItems anySatisfy: [ :menuItem | menuItem hasSubMenu: aMenuMorph ]
	
