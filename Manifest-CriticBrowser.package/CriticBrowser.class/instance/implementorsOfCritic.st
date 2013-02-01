menu
implementorsOfCritic

	criticsModel selectedItem
		ifNotNil: [:elem | 
			elem isBehavior 
				ifTrue: [ elem theNonMetaClass  browse]
				ifFalse: [(AbstractTool new ) browseMessagesFrom:  elem selector] ] 