addFillStyleMenuItems: aMenu hand: aHand
	"Add the items for changing the current fill style of the Morph"
	| menu |
	menu := UIManager default newMenuIn: self for: self.
	self fillStyle addFillStyleMenuItems: menu hand: aHand from: self.
	menu addLine.
	menu add: 'solid fill' translated action: #useSolidFill.
	menu add: 'gradient fill' translated action: #useGradientFill.
	menu add: 'bitmap fill' translated action: #useBitmapFill.
	menu add: 'default fill' translated action: #useDefaultFill.
	aMenu add: 'fill style' translated subMenu: menu.
