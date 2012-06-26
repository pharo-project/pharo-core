*Polymorph-Widgets
themeChanged
	"Update the corner style."

	self cornerStyle: (self theme tabGroupCornerStyleIn: self window).
	super themeChanged