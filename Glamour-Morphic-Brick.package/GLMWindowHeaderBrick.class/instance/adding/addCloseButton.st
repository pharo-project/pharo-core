addCloseButton

	self pushActionButton: (
		GLMActionButtonBrick new
			icon: (GLMUIThemeExtraIcons glamorousClose);
			action: [ self window close ])