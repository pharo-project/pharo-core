menu
versionsMenu: aMenu
	"Fill aMenu with menu items appropriate to the receiver"

	aMenu title: 'Versions'.
	aMenu addStayUpItemSpecial.

	aMenu addAllFromPragma: 'classCommentVersionsListMenu' target: self.
	
	^aMenu 