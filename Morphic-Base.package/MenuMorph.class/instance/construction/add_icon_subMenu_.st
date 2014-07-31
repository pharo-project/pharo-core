add: wordingString icon: aForm subMenu: aMenuMorph
	"Append the given submenu with the given label."

	self addToggle: wordingString target: nil selector: nil.
	self lastItem
		icon: aForm;
		subMenu: aMenuMorph.
	^ self