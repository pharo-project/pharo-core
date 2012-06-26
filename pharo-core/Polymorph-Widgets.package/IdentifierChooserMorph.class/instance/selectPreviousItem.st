event handling
selectPreviousItem
	"Select the previous item in the embedded menus"

	| idx previous |
	self choiceMenus 
		do: [:embeddedMenu | embeddedMenu menuItems 
			do: [:mi | ((mi isKindOf: MenuItemMorph)  and: [mi isSelected])
				ifTrue: [idx := embeddedMenu menuItems indexOf: mi.
					idx = 1
						ifTrue: [idx := embeddedMenu menuItems size + 1].
					idx := idx - 1. 
					[(embeddedMenu menuItems at: idx) isKindOf: MenuItemMorph]
						whileFalse: [idx := idx- 1].
					previous := embeddedMenu menuItems at: idx.
					self scrollPane ifNotNil: [:sp | sp scrollToShow: previous bounds].
					^ embeddedMenu selectItem: previous event: nil]]].
	self selectFirstItem.
