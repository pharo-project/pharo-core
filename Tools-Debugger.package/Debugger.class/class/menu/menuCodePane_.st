menuCodePane: aBuilder
	<contextMenu>
	<debuggerCodePaneMenu>
	
	| target selectionInterval |
	
	target := aBuilder model first.
	selectionInterval := aBuilder model second.
	
	(aBuilder item: #'Run to here' translated)
		order: 0; "Place it on top"
		action: [ target runToSelection: selectionInterval ];
		withSeparatorAfter.
