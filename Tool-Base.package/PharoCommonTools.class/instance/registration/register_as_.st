register: anTool as: aNameSelector
	| usedToolSet |
	super register: anTool as: aNameSelector.
	usedToolSet := recentTools at: aNameSelector ifAbsentPut: [ Set new ].
	usedToolSet add: anTool