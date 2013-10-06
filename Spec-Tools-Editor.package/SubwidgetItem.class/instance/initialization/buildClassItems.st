buildClassItems

	^ AbstractWidgetModel allSubclasses collect: [:class |
		DropListItem 
			named: class name
			do: [ ]] 