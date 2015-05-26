addToMenuItemModel: aMenuItemModel
	| en |
	
	en := self enabledBlock ifNil: [ self enabled ].
	
	aMenuItemModel
		name: self label;
		state: self checked;
		enabled: en;
		icon: self icon;
		shortcut: self keyText;
		subMenu:self subMenu;
		action: self action