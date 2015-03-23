compose
	self
		title: 'Playground';
		custom:
			(GTInspector new
				noTitle; 
				noActions;
				showFirst: [ :composite |
					self codeIn: composite ];
				yourself);
		on: GLMBrowserClosing do: [ 
			"This is a hack for the moment.
			We need a better mechanism from Glamour to help 
			us keep the model in sync"
			self entity
					saveContent: self first panes first presentations first text.
			GTPlayBook instance addPageIfInteresting: self entity ]