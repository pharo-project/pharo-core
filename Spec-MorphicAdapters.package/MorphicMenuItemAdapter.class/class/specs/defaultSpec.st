defaultSpec

	^ #(ToggleMenuItemMorph
		contents: #(model name)
		target: #(model)
		selector: #performMenuActionWith:
		subMenu: #(model subMenu)
		argumentsBlock: #(model actionArguments)
		getStateSelector: #(model stateSelector)
		icon: #(model icon)
		enablementSelector: #enabled
		balloonText: #(model balloonText)
		keyText: #(model shortcutText) )