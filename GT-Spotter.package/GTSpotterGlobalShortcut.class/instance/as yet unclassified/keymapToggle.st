keymapToggle
	"KMRepository reset"
	<shortcut>
	^ KMKeymap
			shortcut: Character cr shift
			action: [ self class openGlobalSpotter spotterModel shiftPressed: true ]