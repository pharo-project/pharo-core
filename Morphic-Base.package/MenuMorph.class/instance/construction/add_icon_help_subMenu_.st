add: wordingString icon: aForm help: helpString subMenu: aMenuMorph 
	"Append the given submenu with the given label."
	
	self
		addToggle: wordingString
		target: nil
		selector: nil.
	self lastItem
		icon: aForm;
		subMenu: aMenuMorph.
	helpString isNil
		ifFalse: [self lastItem setBalloonText: helpString].