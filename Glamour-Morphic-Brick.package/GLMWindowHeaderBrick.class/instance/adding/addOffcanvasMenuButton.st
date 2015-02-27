addOffcanvasMenuButton

	self pushMenuButton: (
		GLMActionButtonBrick new
			icon: (Smalltalk ui icons iconNamed: #nautilusIcon);
			addUpAction: [ self window toggleOffcanvas ])