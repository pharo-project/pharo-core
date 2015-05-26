enableAstHighlightSetting: aBuilder 
	<systemsettings>
	(aBuilder setting: #useAstColoring) 
		label: 'AST based coloring';
		parent: #'Syntax Highlighting'; 
		target: SHRBTextStyler ;
		description: 'When selected we use AST for coloring text, this needs to be debugged and finished' 
