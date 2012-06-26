*Polymorph-Widgets
noteNewOwner: o
	"Update the fill style."
	
	super noteNewOwner: o.
	WorldState addDeferredUIMessage: [self adoptPaneColor: self paneColor]