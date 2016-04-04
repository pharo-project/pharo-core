addToMenuItemModel: aMenuItemModel
	| en subMenu |
	en := self enabledBlock ifNil: [ self enabled ].
	subMenu := self subMenu
		ifNotNil: [ :sub | MenuModel new fromSpec: sub ].
	aMenuItemModel
		name: self label;
		state: self checked;
		enabled: en;
		icon: self icon;
		shortcut: self keyText;
		subMenu: subMenu;
		action: self action