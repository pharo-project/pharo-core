contextMenus

	^ HelpTopic
		title: 'Adding to context menus'
		contents: 'On the class-side of your object, create a method that:
	1. takes one argument (a PragmaMenuAndShortcutRegistration).
	2. Begins with the pragma for whichever menu you want to extend (see AbstractNautilusUI "menu pragmas" protocol)
	
	For example, to extend the menu for the method list pane:
		methodMenu: aBuilder
			<nautilusGlobalMethodMenu>
			
	To see existing examples in your image, browse senders of that pragma'