initialize

	super initialize.

	container := PanelMorph new changeTableLayout; listDirection: #bottomToTop; color: Color white; yourself.
	tab := PluggableTabBarMorph on: self.
	tab width: 150.