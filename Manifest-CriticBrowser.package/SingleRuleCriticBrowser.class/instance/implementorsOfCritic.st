menu
implementorsOfCritic

	criticsModel selectedItem
		ifNotNil: [ :item | 
			item isBehavior 
				ifTrue: [ item theNonMetaClass  browse]
				ifFalse: [ AbstractTool new browseMessagesFrom:  item selector ]] 