construction
addAllFrom: aMenuMorph 
	aMenuMorph submorphs
		do: [:each | 
			(each isKindOf: MenuItemMorph)
				ifTrue: [self
						add: each contents
						target: each target
						selector: each selector
						argumentList: each arguments.
						each icon ifNotNil: [:ic | self lastItem icon: ic]].
			(each isKindOf: MenuLineMorph)
				ifTrue: [self addLine]] 