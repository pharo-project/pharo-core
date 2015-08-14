compose
	self title: self defaultPlaygroundTitle.
	self act: [:b | b update] icon: GLMUIThemeExtraIcons glamorousRefresh entitled: 'Update'.
	self custom:
			(GTInspector new
				noTitle; 
				noActions;
				showFirst: [ :composite |
					self codeIn: composite ];
				yourself);
		when: GLMBrowserClosing do: [ :ann |
			self actOnBrowserClosing: ann ]