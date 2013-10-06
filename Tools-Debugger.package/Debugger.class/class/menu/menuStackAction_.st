menuStackAction: aBuilder
	<contextMenu>
	<debuggerStackActionMenu>
	
	(aBuilder item: #'FullStack')
		keyText: 'f';
		selector: #fullStack.
	(aBuilder item: #'Restart')
		keyText: 'r';
		selector: #restart.
	(aBuilder item: #'Proceed')
		keyText: 'p';
		selector: #proceed.
	(aBuilder item: #'Step')
		keyText: 't';
		selector: #doStep.
	(aBuilder item: #'Step through')
		keyText: 'T';
		selector: #stepIntoBlock.
	(aBuilder item: #'Send')
		keyText: 'e';
		selector: #send.
	(aBuilder item: #'Where')
		keyText: 'w';
		selector: #where.
	(aBuilder item: #'Peel to first like this')
		selector: #peelToFirst;
		withSeparatorAfter.
		
	(aBuilder item: #'Return entered value')
		selector: #returnValue;
		withSeparatorAfter.
	
	(aBuilder item: #'Toggle break on entry')
		selector: #toggleBreakOnEntry.
