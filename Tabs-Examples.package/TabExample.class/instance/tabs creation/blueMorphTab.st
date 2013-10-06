blueMorphTab
	| tab |
	tab := Tab 
		label: 'Blue Morph' 
		icon: Smalltalk ui icons smallBackIcon 
		morph: Morph new.
	tab	
		actions: { (TabAction
			action: [ tab morph color: Color random ]
			icon: Smalltalk ui icons smallConfigurationIcon
			label: 'Randomize color') }.
	tab
		closeable: false;
		menu: [ :menu |
				menu
					add: 'Fubu' 
					target: self 
					selector: #halt ].
				
	 ^ tab