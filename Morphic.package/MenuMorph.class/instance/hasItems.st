accessing
hasItems
	"Answer if the receiver has menu items"
	^ submorphs
		anySatisfy: [:each | each isKindOf: MenuItemMorph] 