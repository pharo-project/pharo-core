buildShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #close)
		category: #ChangesBrowserGlobalShortcuts
		default: Character escape asKeyCombination 
		do: [ :target | target cancel ]
		description: 'Close this dialog'.
		
	(aBuilder shortcut: #accept)
		category: #ChangesBrowserGlobalShortcuts
		default: $s command
		do: [ :target | target accept ]
		description: 'Accept the proposed changes'.