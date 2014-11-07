labelActionTrickFor: aPresentation
	
	 ^ aPresentation titleAction 
		ifNil: [ nil ]
		ifNotNil: [ :labelAction |
			((labelAction isAvailableOn: aPresentation) and: [ labelAction hasIcon ])
				ifTrue: [
					GLMActionButtonBrick new
						icon: labelAction icon;
						setBalloonText: labelAction title;
						addUpAction: [ labelAction actOn: aPresentation ] ]
				ifFalse: [ nil ] ]
	