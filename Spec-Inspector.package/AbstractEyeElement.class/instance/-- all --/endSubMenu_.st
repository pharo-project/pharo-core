endSubMenu: aMenu 
	
	aMenu addGroup: [ :aGroup |
		aGroup addItem: [ :anItem |
			anItem 
				name: 'Copy Name';
				action: [ self copyAccessorCode ];
				shortcut: $c command mac | $c alt win | $c alt unix ] ]