addCloseButton

	self pushActionButton: (
		GLMActionButtonBrick new
			icon: (GLMUIThemeExtraIcons glamorousClose);
			addUpAction: [ self window close ])