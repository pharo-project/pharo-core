menuCommandOn: aBuilder
	<worldMenu>

	(aBuilder item: #VersionnerSpecBrowser)
"		order: 3; "
		parent: #Tools;
		label: 'Versionner';
		icon: (Smalltalk ui icons iconNamed: #databaseIcon);
		action: [ VersionnerSpecBrowser open ]