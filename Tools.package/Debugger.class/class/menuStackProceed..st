menu
menuStackProceed: aBuilder
	<contextMenu>
	<debuggerStackProceedMenu>
	
	| target |
	
	target := aBuilder model.
	
	(aBuilder item: #'Proceed' translated)
		selector: #proceed.
	(aBuilder item: #'Debug' translated)
		selector: #debug.
