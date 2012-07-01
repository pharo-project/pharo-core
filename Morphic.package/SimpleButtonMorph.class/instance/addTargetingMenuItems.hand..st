menu
addTargetingMenuItems: aCustomMenu hand: aHandMorph 
	"Add targeting menu items"
	aCustomMenu addLine.

	aCustomMenu add: 'set target' translated action: #targetWith:.
	target
		ifNotNil: [aCustomMenu add: 'clear target' translated action: #clearTarget]