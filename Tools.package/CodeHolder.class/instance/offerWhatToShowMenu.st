what to show
offerWhatToShowMenu
	"Offer a menu governing what to show"
	| aMenu |
	aMenu := UIManager default newMenuIn: self for: self.
	aMenu addTitle: 'What to show' translated.
	aMenu addStayUpItem.
	self addContentsTogglesTo: aMenu.
	aMenu popUpInWorld