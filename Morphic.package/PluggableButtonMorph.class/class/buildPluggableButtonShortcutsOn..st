as yet unclassified
buildPluggableButtonShortcutsOn: aBuilder
	<keymap>
	(aBuilder shortcut: #action1)
		category: #PluggableButtonMorph
		default: Character space asShortcut | Character cr asShortcut
		do: [ :target :morph :event | morph performAction ].