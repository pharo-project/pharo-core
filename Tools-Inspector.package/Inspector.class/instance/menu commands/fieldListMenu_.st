fieldListMenu: aMenu
	"Arm the supplied menu with items for the field-list of the receiver"

	aMenu addStayUpItemSpecial.
	^aMenu addAllFromPragma: 'inspectorFieldListMenu' target: self.
