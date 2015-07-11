menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Pharo Zen')
		parent: #Help;
		action: [ ProfStef openPharoZenWorkspace ];
		icon: (Smalltalk ui icons pharoIcon scaledToSize: 16@16)