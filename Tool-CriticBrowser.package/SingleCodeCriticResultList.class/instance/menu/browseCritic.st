browseCritic
	criticsModel selectedItem
		ifNotNil: [ :element |
			element isBehavior 
				ifTrue: [ element theNonMetaClass browse ]
				ifFalse: [ element browse ] ] 