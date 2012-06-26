actions
installMenu

	| menu |
	menu := UIManager default newMenuIn: self for: self.
	menu add: 'load packages' action: #load.
	menu add: 'merge packages' action: #merge.
	menu add: 'upgrade packages' action: #upgrade.
	menu popUpInWorld.