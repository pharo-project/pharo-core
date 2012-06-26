construction
addStayUpItemSpecial
	"Append a menu item that can be used to toggle this menu's persistent."

	"This variant is resistant to the MVC compatibility in #setInvokingView:"

	(self valueOfProperty: #hasTitlebarWidgets ifAbsent: [ false ])
		ifTrue: [ ^self ].
	self addStayUpIcons.