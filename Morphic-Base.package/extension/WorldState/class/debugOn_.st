debugOn: aBuilder
	<worldMenu>
	(aBuilder item: #Debugging)
		order: 3.5;
		icon: (Smalltalk ui icons iconNamed: #smallConfigurationIcon);
		with: [ (aBuilder item: #'Remove all Breakpoints')
				order: 0;
				action: [ Breakpoint removeAll ].
			(aBuilder item: #'Enable all break/inspect once')
				order: 0;
				action: [ Halt resetHaltOnce ].
			(aBuilder item: #'Reset Counters')
				order: 0;
				action: [ ExecutionCounter resetAll ]	
				 ]