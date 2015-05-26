items
	"Returns menu items filtering out menu lines"
	^ submorphs select: [:m | m isKindOf: MenuItemMorph]
