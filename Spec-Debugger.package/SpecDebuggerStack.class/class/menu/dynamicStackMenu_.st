dynamicStackMenu: aBuilder
	<contextMenu>
	<specDebuggerStackMenuNew>

	aBuilder model stack generateContextMenuDebuggingActions do: [ :anAction | 
		anAction asMenuRegistrationIn: aBuilder ]