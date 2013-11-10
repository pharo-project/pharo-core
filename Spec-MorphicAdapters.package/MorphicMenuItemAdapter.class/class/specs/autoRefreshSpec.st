autoRefreshSpec

	^ #(UpdatingMenuItemMorph
		target: #(model)
		balloonTextSelector: #balloonText
		subMenuSelector: #subMenu
		nameSelector: #name
		selector: #performMenuActionWith:
		argumentsBlock: #(model actionArguments)
		getStateSelector: #state
		iconSelector: #icon
		enablementSelector: #enabled
		keyText: #(model shortcutText) )