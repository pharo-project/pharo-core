keymapToggleDebug
	"KMRepository reset"
	"<shortcut>"
	^ KMKeymap
			shortcut: Character cr command
			action: [ self class openGlobalSpotterDebug ]