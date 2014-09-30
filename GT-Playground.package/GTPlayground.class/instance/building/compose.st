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
					content: self first panes first presentations first text.
			self entity content asString trimBoth isEmpty
				ifFalse: [ self class repository add: self entity ] ]