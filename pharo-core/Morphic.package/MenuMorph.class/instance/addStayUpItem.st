construction
addStayUpItem
	"Append a menu item that can be used to toggle this menu's persistence."

	(self valueOfProperty: #hasTitlebarWidgets ifAbsent: [ false ])
		ifTrue: [ ^self ].
	self addStayUpIcons.