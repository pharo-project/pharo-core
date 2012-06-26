updating
openPathFrom: aSetting
	(self settingNodeOfDeclaration: aSetting) ifNotNil: [:node |
		self changed: {#rootNodes. #openItemPath}, (node path collect: [:n | n withoutListWrapper])]