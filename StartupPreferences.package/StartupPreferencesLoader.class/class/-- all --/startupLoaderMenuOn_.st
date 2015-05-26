startupLoaderMenuOn: aBuilder 
	<worldMenu>
	
	(aBuilder item: #startupLoader)
		action: [ self default loadFromDefaultLocations ];
		label: 'Run startup scripts';
		parent: #System;
		order: 2;
		help: 'Run startup "scripts';
		icon: Smalltalk ui icons scriptManagerIcon 