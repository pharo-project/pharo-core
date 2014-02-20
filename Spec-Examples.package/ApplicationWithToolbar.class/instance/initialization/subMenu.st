subMenu 

	^ MenuModel new
		addGroup: [ :group |
			group addItem: [ :item |
				item
					name: 'Open';
					icon: Smalltalk ui icons openIcon;
					shortcut: $o command;
					action: [ self inform: 'Open' ] ].
			group addItem: [ :item |
				item 
					name: 'Save';
					icon: Smalltalk ui icons smallSaveIcon;
					shortcut: $s command;
					action: [ self inform: 'Save' ] ].
			group addItem: [ :item |
				item 
					name: 'Print';
					shortcut: $p command;
					icon: Smalltalk ui icons smallPrintIcon;
					action: [ self inform: 'Print' ] ].
			group addItem: [ :item |
				item 
					name: 'Kill';
					shortcut: $k command;
					icon: Smalltalk ui icons smallCancelIcon;
					action: [ self inform: 'Kill' ] ] ]