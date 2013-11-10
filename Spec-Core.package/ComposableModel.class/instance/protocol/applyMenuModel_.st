applyMenuModel: aMenuModel

	aMenuModel menuGroups do: [ :group |
		group menuItems do: [ :item |
			item shortcut ifNotNil: [ :shortcut | self bindKeyCombination: shortcut toAction: [ item performMenuActionWith: {} ] ].
			item subMenu ifNotNil: [ :subMenu | subMenu applyTo: self	] ] ]