updating
closePathFrom: aSetting 
	(self settingNodeOfDeclaration: aSetting)
		ifNotNil: [:node | self changed: {#rootNodes. #closeItemPath}, (node path collect: [:n | n withoutListWrapper])]