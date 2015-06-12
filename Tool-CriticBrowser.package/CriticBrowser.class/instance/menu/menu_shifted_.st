menu: aMenu shifted: aBoolean

	aMenu
		addGroup:[ :g | 
			g addItem: [ :i |
				i 
					name: 'Browse rule' translated;
					action: [ self browseRule ]].
			g addItem: [ :i |
				i 
					name: 'Reapply this rule' translated;
					action: [ self reapplyThisRule ] ] ];
		addGroup:[ :g | 
			g addItem: [ :i |
				i 
					name: 'Ban from selected packages' translated;
					action: [ self addRuleToFalsePositive ]].
			g addItem: [ :i |
				i 
					name: 'Unban from selected packages' translated;
					action: [ self removeRuleToFalsePositive ] ] ].
		
	 ^ aMenu