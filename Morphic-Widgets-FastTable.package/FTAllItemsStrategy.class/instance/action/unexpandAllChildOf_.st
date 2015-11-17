unexpandAllChildOf: anItem
	anItem children
		do: [ :item | 
			item isExpanded
				ifTrue: [ self unexpandAllChildOf: item ].
			item unexpand ]  displayingProgress: [:each | 'Rearanging ' , each name]