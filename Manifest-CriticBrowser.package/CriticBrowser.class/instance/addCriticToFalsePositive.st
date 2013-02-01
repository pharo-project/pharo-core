menu
addCriticToFalsePositive

	criticsModel selectedItems
		ifNotNil: [:criticss | 
			(criticss groupedBy: [:each | checker manifestBuilderOf: each]) 
				keysAndValuesDo: [:key :value |
					
					self addAllCriticToFalsePositive: value on: key]].
		self updateList