openSystemBrowser
	<shortcut>
	^ KMKeymap
			shortcut: $o command, $b command
			action: [ Smalltalk tools openClassBrowser ]