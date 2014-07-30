menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Pharo Zen')
		parent: #Help;
		action: [ PharoTutorial openPharoZenWorkspace ];
		icon: (Smalltalk ui icons pharoIcon scaledToSize: 16@16)