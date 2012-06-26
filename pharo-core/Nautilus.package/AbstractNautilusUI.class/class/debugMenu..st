menu
debugMenu: aBuilder
	<nautilusMethodMenu>
	<nautilusProtocolMenu>
	<nautilusClassMenu>
	<nautilusPackageMenu>
	<nautilusGroupMenu>
	| target |
	target := aBuilder model.
	(aBuilder item: #DebugMenu)
			order: 9999;
			label: 'DEBUG';
			help: 'Open a browser on a restricted view'.
			
	(aBuilder item: #'Reset icons caches')
			order: 0;
			action: [ 
				AbstractNautilusUI resetIconCaches.
				AbstractMethodWidget resetMethodsIconsCache ];
			parent: #DebugMenu;
			help: 'Open a browser on a restricted view'.
			
	(aBuilder item: #'Inspect me')
			order: 100;
			action: [ target inspect ];
			parent: #DebugMenu;
			help: 'Open a browser on a restricted view'.
			
	(aBuilder item: #'Inspect my model ')
			order: 200;
			action: [ target model inspect];
			parent: #DebugMenu;
			help: 'Open a browser on a restricted view'.