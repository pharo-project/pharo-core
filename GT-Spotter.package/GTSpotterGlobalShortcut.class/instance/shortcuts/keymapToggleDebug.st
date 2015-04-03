keymapToggleDebug
	"KMRepository reset"
	<shortcut>
	^ KMKeymap
			shortcut: Character cr shift command
			action: [ self class openGlobalSpotterDebug ]