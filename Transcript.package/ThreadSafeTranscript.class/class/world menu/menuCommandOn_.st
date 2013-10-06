menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder item: #'Transcript')
		action: [Smalltalk tools transcript open];
		parent: #Tools;
		help: 'Transcript';
		icon: self taskbarIcon.