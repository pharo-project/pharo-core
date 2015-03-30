gtDisplayExamplesIn: aComposite

	^ aComposite tree
		title: 'E.g.';
		when: [ self gtExamples notEmpty ];
		display: [ self gtExamples ];
		children: [ :anExample | anExample childrenExamples ];
		format: [ :anExample | anExample title ];
		send: [ :anExample | anExample result ];
		allExpanded;
		selectionPopulate: #selection 
			on: $o 
			entitled: 'Open source' 
			with: [ :list | list rawSelection methodReference ]