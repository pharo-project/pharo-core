subMenu 

	^ MenuModel new
		addGroup: [ :group |
			group addItem: [ :item |
				item
					name: 'Open';
					icon: Smalltalk ui icons openIcon;
					shortcut: $o meta;
					action: [ self inform: 'Open' ] ].
			group addItem: [ :item |
				item 
					name: 'Save';
					icon: Smalltalk ui icons smallSaveIcon;
					shortcut: $s meta;
					action: [ self inform: 'Save' ] ].
			group addItem: [ :item |
				item 
					name: 'Print';
					shortcut: $p meta;
					icon: Smalltalk ui icons smallPrintIcon;
					action: [ self inform: 'Print' ] ].
			group addItem: [ :item |
				item 
					name: 'Kill';
					shortcut: $k meta;
					icon: Smalltalk ui icons smallCancelIcon;
					action: [ self inform: 'Kill' ] ] ]