versionsMenu: aMenu
	"Fill aMenu with menu items appropriate to the receiver"

	aMenu title: 'Versions' translated.
	aMenu addStayUpItemSpecial.

	aMenu addAllFromPragma: 'versionsBrowserListMenu' target: self.

	^aMenu 