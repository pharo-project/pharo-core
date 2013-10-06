dynamicStackMenu: aBuilder
	<contextMenu>
	<specDebuggerStackMenuNew>

	aBuilder model stack contextMenuDebuggingActions do: [ :anAction | 
		anAction asMenuRegistrationIn: aBuilder ]