updateColor
	"Update the color of the menu."

	self theme preferGradientFill
		ifFalse: [ ^ self ].
	self fillStyle: (self theme menuFillStyleFor: self).	
	"update the title color"
	self allMorphs
		detect: [ :each | each hasProperty: #titleString ]
		ifFound: [ :title | title fillStyle: (self theme menuTitleFillStyleFor: title) ]