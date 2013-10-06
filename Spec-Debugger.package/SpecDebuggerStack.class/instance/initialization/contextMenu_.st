contextMenu: aMenu
	"Create the context menu dynamically."
	
	"This method of constructing the menu is used as it allow one to reuse the MenuRegistration class for creating the actual menu morphs."							
	^ aMenu addAllFromPragma: 'specDebuggerStackMenuNew' target: self debugger