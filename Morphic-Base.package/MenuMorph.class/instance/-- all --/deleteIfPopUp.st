deleteIfPopUp
	"Remove this menu from the screen if stayUp is not true. If it is a submenu, also remove its owning menu."

	stayUp ifFalse: [self topRendererOrSelf delete].
	(popUpOwner notNil and: [popUpOwner isKindOf: MenuItemMorph]) ifTrue: [
		popUpOwner isSelected: false.
		(popUpOwner owner isKindOf: MenuMorph)
			ifTrue: [popUpOwner owner deleteIfPopUp]].
