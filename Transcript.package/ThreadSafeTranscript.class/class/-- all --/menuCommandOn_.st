menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder item: #'Transcript')
		action: [Smalltalk tools transcript open];
		order: 0.30;
		parent: #Tools;
		help: 'Transcript';
		icon: self taskbarIcon.
	aBuilder withSeparatorAfter.	