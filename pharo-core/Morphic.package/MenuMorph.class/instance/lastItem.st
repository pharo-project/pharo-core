accessing
lastItem

	submorphs reverseDo: [ :each |
			(each isKindOf: MenuItemMorph) ifTrue: [ ^each ] ].
	^submorphs last