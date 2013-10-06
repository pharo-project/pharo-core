menuStackAction: aBuilder
	<contextMenu>
	<specDebuggerStackActionMenu>

	(aBuilder item: #'Restart (r)')
		"keyText: 'r';"
		selector: #restartAction.
	(aBuilder item: #'Proceed (p)')
		"keyText: 'p';"
		selector: #resumeAction.
	(aBuilder item: #'Step Over (t)')
		"keyText: 't';"
		selector: #stepOverAction.
	(aBuilder item: #'Step Through (T)')
		"keyText: 'T';"
		selector: #stepThroughAction.
	(aBuilder item: #'Step Into (e)')
		"keyText: 'e';"
		selector: #stepIntoAction.
	(aBuilder item: #'Where')
		"keyText: 'w';"
		selector: #whereIsAction.
	(aBuilder item: #'Peel to first like this')
		selector: #peelToFirst;
		withSeparatorAfter.
	
	(aBuilder item: #'Return entered value')
		selector: #returnValue;
		withSeparatorAfter.
	
	(aBuilder item: #'Toggle break on entry')
		selector: #toggleBreakOnEntry.