compose
	self title: 'E.g.'.
	self when: [ :class | (self examplesFor: class) notEmpty ].
	self list
		display: [ :class | self examplesFor: class ];
		format: [ :pragmaExamplePair | pragmaExamplePair result gtDisplayString ];
		send: [ :pragmaExamplePair | pragmaExamplePair result ];
		morphicSelectionAct: [ :list | 
			list rawSelection methodReference browse ] 
			icon: GLMUIThemeExtraIcons glamorousBrowse 
			on: $b 
			entitled: 'Browse source';
		selectionPopulate: #selection 
			on: $o 
			entitled: 'Open source' 
			with: [ :list | list rawSelection methodReference ]