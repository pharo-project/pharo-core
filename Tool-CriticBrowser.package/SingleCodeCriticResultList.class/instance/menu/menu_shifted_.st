menu: aMenu shifted: aBoolean
	(rule notNil and: [ criticsModel selectedItems notEmpty ])
		ifTrue: [ 
			self addNavigationMenuItemsTo: aMenu.
			aMenu addLine.
			self addMarkingMenuItemsTo: aMenu.
			rule isTransformationRule ifTrue: [ 
				aMenu
					addLine;
					add: 'Transform selected critic' target: self selector: #transformCritic ] ].
	^ aMenu