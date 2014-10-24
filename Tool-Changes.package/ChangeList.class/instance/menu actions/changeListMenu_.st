changeListMenu: aMenu
	"Fill aMenu up so that it comprises the primary changelist-browser menu"

	aMenu addTitle: 'Change list'.
	aMenu addStayUpItem.
	aMenu addAllFromPragma: 'changeListMenu' target: self.
	^aMenu 