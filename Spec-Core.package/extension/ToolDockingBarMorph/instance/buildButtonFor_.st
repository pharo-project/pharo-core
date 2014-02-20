buildButtonFor: item

	^ Smalltalk ui theme
		newButtonIn: self for: item
		getState: #enabled
		action: #performMenuActionWith:
		arguments: { self }
		getEnabled: #enabled 
		label: (IconicListItem text: item name icon: item icon)
		help: item description 