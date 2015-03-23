addOffcanvasMenuButton

	self pushMenuButton: (
		GLMActionButtonBrick new
			icon: (Smalltalk ui icons iconNamed: #nautilusIcon);
			action: [ self window toggleOffcanvas ])