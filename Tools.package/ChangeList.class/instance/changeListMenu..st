menu actions
changeListMenu: aMenu
	"Fill aMenu up so that it comprises the primary changelist-browser menu"

	aMenu addTitle: 'change list'.
	aMenu addStayUpItemSpecial.

	aMenu addAllFromPragma:'changeListMenu' target: self.

	^aMenu 