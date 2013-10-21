updateColor
	"Update the color of the menu."
	| title |
	self theme preferGradientFill ifFalse: [^ self].
	self fillStyle: (self theme menuFillStyleFor: self).

	"update the title color"
	title := self allMorphs
				detect: [:each | each hasProperty: #titleString]
				ifNone: [^ self].
	title fillStyle: (self theme menuTitleFillStyleFor: title)