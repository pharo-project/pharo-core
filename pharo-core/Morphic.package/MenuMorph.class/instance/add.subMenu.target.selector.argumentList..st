construction
add: aString subMenu: aMenuMorph target: target selector: aSymbol argumentList: argList
	"Append the given submenu with the given label."

	self
		addToggle: aString
		target: target
		selector: aSymbol
		getStateSelector: nil
		enablementSelector: nil
		argumentList: argList.
	self lastItem subMenu: aMenuMorph