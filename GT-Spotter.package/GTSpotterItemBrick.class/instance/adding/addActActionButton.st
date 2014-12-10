addActActionButton

	self actionbarBrick addActionButton: (
		self newActionButtonBrick
			icon: GLMUIThemeExtraIcons glamorousPlay;
			addUpAction: [ self beSelected. self stepModel act ];
			yourself).