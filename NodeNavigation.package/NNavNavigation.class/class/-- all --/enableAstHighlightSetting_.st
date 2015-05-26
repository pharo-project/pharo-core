enableAstHighlightSetting: aBuilder 
	<systemsettings>
	(aBuilder setting: #useArrowsShortcuts) 
		label: 'AST navigation';
		parent: #codeBrowsing; 
		target: NNavNavigation  ;
		description: 'When selected the shortcuts for node navigation use arrows'
